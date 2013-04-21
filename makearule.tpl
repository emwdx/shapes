<!DOCTYPE html>
<html lang="en">

<head>
<title>Shapes</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>


<body>
<div class = "row-fluid">
<div class = "span12">
<h3>Now let's generalize. Come up with a rule tells us when two shapes are the same.</h3> 
</div>


</div>


<form action = "/shapes/myrule/" method = "POST" class = "form-horizontal ">
<h3><p class = "text-info">Two shapes are the same when...
<input type = "text" name = "rule"  placeholder="Type your rule here..." />

<button type = "submit" class = "btn">Submit my rule</button>
</form></h3>




<hr>
<div class = "row-fluid">
<div class = "span3">
%if response1=='YES':
    <h2><p class = "text-center text-info">{{response1}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response1}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[0]}}% of people said YES.</p>
<a href = "/shapes/1/results"><img src="/static/shapes/1.png" class="img-rounded"></a>

</div>

<div class = "span3">
%if response2=='YES':
    <h2><p class = "text-center text-info">{{response2}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response2}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[1]}}% of people said YES.</p>
<a href = "/shapes/2/results"><img src="/static/shapes/2.png" class="img-rounded"></a>

</div>

<div class = "span3">
%if response3=='YES':
    <h2><p class = "text-center text-info">{{response3}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response3}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[2]}}% of people said YES.</p>
<a href = "/shapes/3/results"><img src="/static/shapes/3.png" class="img-rounded"></a>


</div>

<div class = "span3">
%if response4=='YES':
    <h2><p class = "text-center text-info">{{response4}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response4}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[3]}}% of people said YES.</p>
<a href = "/shapes/4/results"><img src="/static/shapes/4.png" class="img-rounded"></a>


</div>

</div>

<hr>
<div class = "row-fluid">
<div class = "span3">
%if response5=='YES':
    <h2><p class = "text-center text-info">{{response5}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response5}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[4]}}% of people said YES.</p>
<a href = "/shapes/5/results" ><img src="/static/shapes/5.png" class="img-rounded"></a>


</div>

<div class = "span3">
%if response6=='YES':
    <h2><p class = "text-center text-info">{{response6}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response6}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[5]}}% of people said YES.</p>
<a href = "/shapes/6/results" ><img src="/static/shapes/6.png" class="img-rounded"></a>


</div>

<div class = "span3">
%if response7=='YES':
    <h2><p class = "text-center text-info">{{response7}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response7}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[6]}}% of people said YES.</p>
<a href = "/shapes/7/results"><img src="/static/shapes/7.png" class="img-rounded"></a>


</div>

<div class = "span3">
%if response8=='YES':
    <h2><p class = "text-center text-info">{{response8}}</h2></p>
%else:
    <h2><p class = "text-center text-error">{{response8}}</h2></p>
%end
<p class = "text-center text-info">{{percentages[7]}}% of people said YES.</p>
<a href = "/shapes/8/results"><img src="/static/shapes/8.png" class="img-rounded"></a>


</div>

</div>




</body>
</html>

