<!DOCTYPE html>
<html lang="en">

<head>
<title>Is it green?</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>


<body>
<div class = "row-fluid">
<div class = "span12">


So far, {{numberResponses}} responses have been submitted. Can you help get me to 5,000?

<hr>
<h2><p class = "text-center">I'm a computer and I'm trying to learn my colors. </p>
<p class = "text-center">You can help me learn by answering a quick question:<br>
Do you think the rectangle below is green?</p></h2>
</div>
<div class = "row-fluid">
<div class = "span4 offset4">
<div class = "container-fluid"><div style = "background: #{{color}}; border-radius:5px"><br><br><br><br><br><br></div>
<br>
<br>
<br>

<div class = "container-fluid">
<div class="btn-group ">
  <a href = "/isitgreen/{{color}}/yes/"  class="btn btn-primary" ><h2>Yes</h2></a>
  
  <a href = "/isitgreen/{{color}}/no/" class="btn btn-primary" ><h2>No</h2></a>
</div>  
</div>



</div>

<p>
<p>


</div>
</div>
</div></div>
<p>
<div 



  </p>
  
</div>
</div>


</body>
</html>

