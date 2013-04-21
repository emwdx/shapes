<!DOCTYPE html>
<html lang="en">

<head>
<title>Shapes</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>




<div class = "row-fluid">
<div class = "span12">
<h3>Thanks for submitting! Here are everyone's rules:</h3>
<hr>
</div>
</div>
<div class = "row-fluid">
<div class = "span1 offset2">
<img src = "/static/shapes/1.png"></div>
<div class = "span1">
<img src = "/static/shapes/2.png"></div>

<div class = "span1">
<img src = "/static/shapes/3.png"></div>

<div class = "span1">
<img src = "/static/shapes/4.png"></div>

<div class = "span1">
<img src = "/static/shapes/5.png"></div>

<div class = "span1">
<img src = "/static/shapes/6.png"></div>

<div class = "span1">
<img src = "/static/shapes/7.png"></div>

<div class = "span1">
<img src = "/static/shapes/8.png"></div>
</div>
</div>

Make a comment based on the responses below.
<form action = "/shapes/ourrules/" method = "POST" class = "form-horizontal">

<input type = "text" name = "rule" placeholder = "Write your comment here." />

<button type = "submit" class = "btn">Submit my response.</button>
</form>

<table class="table table-bordered table-hover">

%for row in rulelist[1:]:
    <tr><td>
    <b>{{row}}</b></tr>
%end
</table>

<form action = "/shapes/ourrules/" method = "GET class = "form-horizontal">
<button type = "submit" class = "btn btn-primary">Refresh the page.</button>
</form>
