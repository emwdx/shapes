<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="../mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>



<head>
<title>Shapes</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>




<body>
<div class = "container-fluid">

<div class = "row-fluid">
<div class = "span12">
<h4><p class = "text-center">Shape {{number}} of 8</p></h4>
</div>
</div>
<hr>
<div class = "row-fluid">
<div class = "span12">

%if(percentMessage ==''):
<h2><p class = "text-center">Do these have the same shape?</p></h2>
</div>
%else:
    <h2 class = "text-center"><p class = "text-info">{{percentMessage}}</p></h2>
%end
<div class = "row-fluid">
<div class = "span6 offset3">
<img src="/static/shapes/{{number}}.png" class="img-rounded">
</div></div>

<div class = "row-fluid">
<div class = "span2 offset5">

%if(percentMessage ==''):
<div class = "row-fluid">
<div class = "span12">
<p class = "text-center"><div class = "btn-group">
  <a href = "/shapes/{{number}}/yes/" class="btn btn-primary"><h3>Yes</h3></a>
  <a href = "/shapes/{{number}}/no/" class="btn btn-primary"><h3>No </h3></a>

</div>
</p>
</div>
</div>

</div>

%end
</body>
</html>

