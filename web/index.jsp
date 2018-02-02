<html>
<head>
<title>my website</title>
<link href="web1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<script type="text/javascript" align="left">

var image1=new Image();
image1.src="IMG/exam6.jpg"; 
var image2=new Image();
image2.src="IMG/exam4.jpg";
var image3=new Image();
image3.src="IMG/exam1.png";
var image4=new Image();
image4.src="IMG/exam5.jpg";
var image5=new Image();
image5.src="IMG/exam16.jpg";
</script>
<img src="" name="slide" width="1300" height="480">
<script type="text/javascript">

var step=1;
function slideit(){
document.images.slide.src=eval("image"+step+".src");
if(step<5)
step++;
else
step=1;
setTimeout("slideit()",3000);
}
slideit();

</script>
<div id="nav">
<ul>
<li><a href="index.jsp">Home</a></li>
<li><a href="login.jsp">login</a></li>
<li><a href="contactuspage.html">Contact Us</a></li>
</ul>
</div>
<div id="d">
<h2>Welcome to our Website</h>
<p>This website will provide you to take exam online and thus saves your time to go far away. There are different kind of
subjects are provided for exam purpose. Candidate can select any subject for which he/she wants to take exam and then
he/she can start their exam. System provides the facility to check attempted papers by candidates automatically and shows 
result after paper submitting.<p>
</div>
<div id="img1">
<img src="IMG\book1.jpg" width="300" height="250" />
<img src="IMG\book2.jpg" width="300" height="250" />
<img src="IMG\book8.jpg" width="300" height="250" />
<img src="IMG\book9.jpg" width="300" height="250" />
<img src="IMG\book4.jpg" width="300" height="250" />
<img src="IMG\booktwo.jpg" width="300" height="250" />
<img src="IMG\bookthree.jpg" width="300" height="250" />
<img src="IMG\bookone.jpg" width="300" height="250" />
<img src="IMG\bookfour.jpg" width="300" height="250" />
<img src="IMG\bookfive.jpg" width="300" height="250" />
<img src="IMG\booksix.jpg" width="300" height="250" />
<img src="IMG\bookseven.jpg" width="300" height="250" />
</div>
<div id="footer">
Footer Area
</div>
</body>
</html>