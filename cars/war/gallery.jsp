<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name=viewport content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<title>Gallery</title>
<style type="text/css">
#cont{
font-style:Arial;
font-size:25px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar" id="cont">
	<div class="container" id="cont">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> 
			<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		<div class="collapse navbar-collapse" id="navbar-collapse">
		<a href="" class="navbar-brand">Cars</a>
		<a href="login.jsp" class="btn btn-warning navbar-btn navbar-right">Login</a>
		<ul class="nav navbar-nav">
   		<li class="active"><a href="sports.jsp">Home</a></li>
		<li class = "dropdown"><a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">Models</a>
		<ul class = "dropdown-menu">    		
			<li><a href="gallery.jsp#c1">AUDI</a></li>
			<li><a href="gallery.jsp#c2">BMW</a></li>
			<li><a href="gallery.jsp#c3">BENZ</a></li>
			<li><a href="gallery.jsp#c4">HONDA</a></li>
		
		</ul>
		</li>		
		<li><a href="sports.jsp#News">News</a></li>
    		<li><a href="sports.jsp#search">Search</a></li>
    		<li><a href="gallery.jsp">Gallery</a></li>
    		<li><a href="sports.jsp#service">Service</a></li>	
		</ul>
		</div>
	</div>
</div>	
</nav>
<div id = "c1" class = "carousel slide">
	<ol class = "carousel-indicators">
	<li data-target = "#c1" data-slide-to = "0" class= "active"></li>
	<li data-target = "#c1" data-slide-to = "1"></li>
	<li data-target = "#c1" data-slide-to = "2"></li>
	<li data-target = "#c1" data-slide-to = "3"></li>
	</ol>
			<div class = "carousel-inner">
		<div class = "item active">
		<img src="images/a1.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/a2.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/a3.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/a4.jpg" class="img-responsive" alt="image">
		</div>
			</div>
			<a class = "carousel-control left" href = "#c1" data-slide = "prev">
			<span class - "icon-prev"></span>
			</a>
			<a class = "carousel-control right" href ="#c1" data-slide = "next">
			<span class - "icon-next"></span>
			</a>
	</div>
	<div id = "c2" class = "carousel slide">
	<ol class = "carousel-indicators">
	<li data-target = "#c2" data-slide-to = "0" class= "active"></li>
	<li data-target = "#c2" data-slide-to = "1"></li>
	<li data-target = "#c2" data-slide-to = "2"></li>
	<li data-target = "#c2" data-slide-to = "3"></li>
	</ol>
			<div class = "carousel-inner">
		<div class = "item ">
		<img src="images/b1.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item active">
		<img src="images/b2.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/b3.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/b4.jpg" class="img-responsive" alt="image">
		</div>
			</div>
			<a class = "carousel-control left" href = "#c2" data-slide = "prev">
			<span class - "icon-prev"></span>
			</a>
			<a class = "carousel-control right" href ="#c2" data-slide = "next">
			<span class - "icon-next"></span>
			</a>
	</div>
	<div id = "c3" class = "carousel slide">
	<ol class = "carousel-indicators">
	<li data-target = "#c3" data-slide-to = "0" class= "active"></li>
	<li data-target = "#c3" data-slide-to = "1"></li>
	<li data-target = "#c3" data-slide-to = "2"></li>
	<li data-target = "#c3" data-slide-to = "3"></li>
	</ol>
			<div class = "carousel-inner">
		<div class = "item active">
		<img src="images/c1.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/c2.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/c3.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/c4.jpg" class="img-responsive" alt="image">
		</div>
			</div>
			<a class = "carousel-control left" href = "#c3" data-slide = "prev">
			<span class - "icon-prev"></span>
			</a>
			<a class = "carousel-control right" href ="#c3" data-slide = "next">
			<span class - "icon-next"></span>
			</a>
	</div>
	<div id = "c4" class = "carousel slide">
	<ol class = "carousel-indicators">
	<li data-target = "#c4" data-slide-to = "0" class= "active"></li>
	<li data-target = "#c4" data-slide-to = "1"></li>
	<li data-target = "#c4" data-slide-to = "2"></li>
	<li data-target = "#c4" data-slide-to = "3"></li>
	</ol>
			<div class = "carousel-inner">
		<div class = "item active">
		<img src="images/d1.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/d2.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/d3.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/d4.jpg" class="img-responsive" alt="image">
		</div>
			</div>
			<a class = "carousel-control left" href = "#c4" data-slide = "prev">
			<span class - "icon-prev"></span>
			</a>
			<a class = "carousel-control right" href ="#c4" data-slide = "next">
			<span class - "icon-next"></span>
			</a>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
            $("#c1").carousel('cycle');
            $("#c2").carousel('cycle');
            $("#c3").carousel('cycle');
            $("#c4").carousel('cycle');
</script>
</body>
</html>