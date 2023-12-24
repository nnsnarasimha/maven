<!DOCTYPE html>
<html> 
<head> 
<title> Example of Date Attribute </title> 
<script> 
function viewdate() { 
var x = document.getElementById("dob").value; 
document.getElementById("demo").innerHTML = x; 
</script> 
</head> 
<body> 
Employee Name: <input type="text" placeholder="Your Good name"/> 
<br>
<br>
Date of Joining: 
<input type="date" id="dob">
<br> 
<button onclick="viewdate()"> Submit 
</button> 
<br>
<h2 id="demo"> </h2> 
</body> 
</html>
