from bottle import *

from random import *

HOSTNAME = '192.168.0.198'
numberShapes = 8


def createDataFiles():
    
        outFile = open('shapesdata','bw')
        shapes = [[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]]
        pickle.dump(shapes,outFile)
        outFile.close()

def genRandhex():
    from random import randint
    levels = (randint(0,255),randint(0,255),randint(0,255))
    hexcolor = '%02x%02x%02x' % levels
    return hexcolor
def genGreenDataFile():
    outFile = open(str('greendata'),'bw')
    pickle.dump(['000000',3],outFile)
    outFile.close()

#genGreenDataFile()
    

#createDataFiles()

def addOne(number,index):
    
      percentMessage = ''
      outFile = open('shapesdata','br')
      currResults = pickle.load(outFile)
      outFile.close()
  
      currResults[int(number)-1][index]=currResults[int(number)-1][index]+1
    
      if(index==0):
              response.set_cookie('response'+str(number),'YES',path = '/')
      else:
              response.set_cookie('response'+str(number),'NO',path = '/')
          
  

      outFile = open('shapesdata','bw')
      pickle.dump(currResults,outFile)
      outFile.close()

      if(int(number)<numberShapes):
          return template('showshapes.tpl',percentMessage = percentMessage, number = str(int(number)+1))
      
      else:
        
        response1 = request.cookies.response1
        response2 = request.cookies.response2
        response3 = request.cookies.response3
        response4 = request.cookies.response4
        response5 = request.cookies.response5
        response6 = request.cookies.response6
        response7 = request.cookies.response7
        response8 = request.cookies.response8
        outFile = open('shapesdata', 'br')
        currResults = pickle.load(outFile)
        outFile.close()
        percentages=[]
        for i in range(8):
            percent = str( int(100*currResults[i][0]/(currResults[i][0]+currResults[i][1])))
            percentages.append(percent)
            

         
        return template('allresults.tpl',response1 = response1, response2 = response2, response3 = response3, response4 = response4, response5 = response5, response6 = response6, response7 = response7, response8 = response8, percentages = percentages)



@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root = '/Users/weinbergmath/Sites/')
@get('/shapes/makearule')
def collectRules():
        response1 = request.cookies.response1
        response2 = request.cookies.response2
        response3 = request.cookies.response3
        response4 = request.cookies.response4
        response5 = request.cookies.response5
        response6 = request.cookies.response6
        response7 = request.cookies.response7
        response8 = request.cookies.response8
        outFile = open('shapesdata', 'br')
        currResults = pickle.load(outFile)
        outFile.close()
        percentages=[]
        for i in range(8):
            percent = str( int(100*currResults[i][0]/(currResults[i][0]+currResults[i][1])))
            percentages.append(percent)
            

         
        return template('makearule.tpl',response1 = response1, response2 = response2, response3 = response3, response4 = response4, response5 = response5, response6 = response6, response7 = response7, response8 = response8, percentages = percentages)

@post('/shapes/myrule/')
@post('/shapes/ourrules/')
def showRules():
    rule = request.forms.get('rule')
    outFile = open('ruleslist','br')
    rulelist = pickle.load(outFile)
    outFile.close()
    rulelist.append(rule)

    outFile = open('ruleslist','bw')
    pickle.dump(rulelist,outFile)
    outFile.close()

    return template('ourresults.tpl',rulelist = rulelist)
    
@get('/shapes/ourrules/')
def reloadRules():
    outFile = open('ruleslist','br')
    rulelist = pickle.load(outFile)
    outFile.close()
 
    return template('ourresults.tpl',rulelist = rulelist)
 


@get('/shapes/')
@get('/shapes/<number>/')
def   showshapes(number=1):
      percentMessage = ''
      if(int(number)>=1 and int(number) <=numberShapes):
          
      
          return template('showshapes.tpl', percentMessage = percentMessage, number = number)
      else:
          return template('showshapes.tpl', percentMessage = percentMessage, number = '1')

@get('/shapes/<number>/yes/')
def answerYes(number):
   return( addOne(number,0))
  
@get('/shapes/<number>/no/')
def answerNo(number):
   return( addOne(number,1))
    
@get('/shapes/myresults')
def showMyResults():
        response1 = request.cookies.response1
        response2 = request.cookies.response2
        response3 = request.cookies.response3
        response4 = request.cookies.response4
        response5 = request.cookies.response5
        response6 = request.cookies.response6
        response7 = request.cookies.response7
        response8 = request.cookies.response8
        outFile = open('shapesdata', 'br')
        currResults = pickle.load(outFile)
        outFile.close()
        percentages=[]
        for i in range(8):
            percent = str( int(100*currResults[i][0]/(currResults[i][0]+currResults[i][1])))
            percentages.append(percent)
            

         
        return template('allresults.tpl',response1 = response1, response2 = response2, response3 = response3, response4 = response4, response5 = response5, response6 = response6, response7 = response7, response8 = response8, percentages = percentages)

    

@get('/shapes/<number>/results')
def showResults(number):
    outFile = open('shapesdata', 'br')
    currResults = pickle.load(outFile)
    outFile.close()
    currPercent = int(100*currResults[int(number)-1][0]/(currResults[int(number)-1][0]+currResults[int(number)-1][1]))
    percentMessage = "%s%% of people said that these shapes were the same."%(currPercent)
    return template('showshapes.tpl', percentMessage = percentMessage, number = number)

@get('/isitgreen/')
def showColor():
    outFile = open('greendata','br')
    currResults = pickle.load(outFile)
    outFile.close()
    numberResponses = len(currResults)
    hexcolor = genRandhex()
    return template('isitgreen.tpl',color = hexcolor, pagecolor = '', numberResponses = numberResponses)

@get('/isitgreen/<pagecolor>/yes/')
def recordYes(pagecolor):
    outFile = open('greendata','br')
    currResults = pickle.load(outFile)
    outFile.close()
    currResults.append([pagecolor,1])
    numberResponses = len(currResults)
    outFile = open('greendata','bw')
    pickle.dump(currResults,outFile)
    outFile.close()
    hexcolor = genRandhex()
    return template('isitgreen.tpl',color =hexcolor, pagecolor = pagecolor,numberResponses = numberResponses)

@get('/isitgreen/<pagecolor>/no/')
def recordNo(pagecolor):
    outFile = open('greendata','br')
    currResults = pickle.load(outFile)
    outFile.close()
    currResults.append([pagecolor,0])
    numberResponses = len(currResults)
    outFile = open('greendata','bw')
    pickle.dump(currResults,outFile)
    outFile.close()
    hexcolor = genRandhex()
    return template('isitgreen.tpl',color =hexcolor, pagecolor = pagecolor,numberResponses = numberResponses)



run(host = HOSTNAME,port = 8080, debug = True)
