<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Velu page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name=viewport content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<script language="JavaScript" type="text/javascript">
var xMLHttpRequest = new XMLHttpRequest();
function find()
	{
		xMLHttpRequest.open("Get","/cars/Ajax?userInput=" + document.getElementById("userInput").value,true);
		xMLHttpRequest.onreadystatechange = process;
		xMLHttpRequest.send(null);
	}
		
function process()
	{
		if(xMLHttpRequest.readyState==4 && xMLHttpRequest.status==200)
		{
		var JSONTopicObject = eval('(' + xMLHttpRequest.responseText + ')');
		var table = document.getElementById("tables");
		table.innerHTML = ""; 
		var headrow = table.insertRow(0);
		var headcell = headrow.insertCell(0);
		headcell.style.backgroundColor = "lightblue";	
		headcell.innerHTML = JSONTopicObject.topic.name;									
		var datas = JSONTopicObject.topic.data;
		var i = 0;
			while (i < datas.length)
				{
				row = table.insertRow(i+1);
				cell = row.insertCell(0);
				cell.innerHTML = datas[i++].name;
				}
			
		}
	}
function validate(form_id,email)
{
	var reg = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]{2,4})$/;
	var address = document.forms[form_id].elements[email].value;
	
	if (reg.test(address) == false)
		{
		alert('Invalid Email Address');
		document.forms[form_id].elements[email].focus();
		return false;
		}
	
	}
</script>
<style type="text/css">
#cont{
font-style:sanseriff;
font-size:25px;
}
</style>
</head>
<body >

	<nav class="navbar navbar-inverse navbar-static-top" id="my-navbar">
	<div class="container" id="cont">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> 
			<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		<div class="collapse navbar-collapse" id="navbar-collapse">
		<a href="" class="navbar-brand">Cars</a>
		<a href="#login" data-toggle = "modal" class="btn btn-warning navbar-btn navbar-right">Login</a>
		<ul class="nav navbar-nav">
   		<li class="active"><a href="#">Home</a></li>
		<li class = "dropdown"><a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">Models</a>
		<ul class = "dropdown-menu">    		
			<li><a href="gallery.jsp#c1">AUDI</a></li>
			<li><a href="gallery.jsp#c2">BMW</a></li>
			<li><a href="gallery.jsp#c3">BENZ</a></li>
			<li><a href="gallery.jsp#c4">HONDA</a></li>
		
		</ul>
		</li>		
		<li><a href="sports.jsp#news">News</a></li>
    		<li><a href="sports.jsp#search">Search</a></li>
    		<li><a href="gallery.jsp">Gallery</a></li>
    		<li><a href="#service">Service</a></li>
		</ul>
		</div>
	</div>
</div>	
</nav>
<h3>  ${name}   ${Value1}    </h3>
<div id = "carousel" class = "carousel slide" data-ride="carousel">
	<ol class = "carousel-indicators">
	<li data-target = "#carousel" data-slide-to = "0" class = "active" ></li>
	<li data-target = "#carousel" data-slide-to = "1"></li>
	<li data-target = "#carousel" data-slide-to = "2"></li>
	<li data-target = "#carousel" data-slide-to = "3"></li>
	<li data-target = "#carousel" data-slide-to = "4"></li>
	</ol>
	 <div class = "carousel-inner">
		<div class = "item active">
		<img src="images/01.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/02.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/03.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/04.jpg" class="img-responsive" alt="image">
		</div>
		<div class = "item">
		<img src="images/05.jpg" class="img-responsive" alt="image">
		</div>
	 </div>
			<a class = "carousel-control left" href = "#carousel" data-slide = "prev">
			<span class - "icon-prev"></span>
			</a>
			<a class = "carousel-control right" href ="#carousel" data-slide = "next">
			<span class - "icon-next"></span>
			</a>
</div>
				
<div class="container">
    <div class="row">
        <h2 class="title">Brands</h2>
        <p><img src="images/audi.jpg" alt="" width="180" height="160" class="center" />
		<img src="images/bmw.jpg" alt="" width="180" height="160" class="left" />	
		<img src="images/benz.jpg" alt="" width="180" height="160" class="left" />
		<img src="images/honda.jpg" alt="" width="180" height="160" class="left" />
		</p>
    </div> 
</div>
 <div id="search" class= "well">
   <div class = "row">
		 <div class="col-md-3">
     	 <h2>Search Area</h2>
     	 <table>
     	 <tr>
      	 <td>
      		<form  method="get" >
          	<fieldset>
          	<input id="userInput" type="text" onkeypress="find();" autocomplete="off" />
          	<table id="tables" style="border:1px solid black" href="#book" data-toggle="modal"></table>
    	  	</fieldset>
      		</form></td>
      		</tr>
    		</table>
      ``</div>
 		<div class="col-md-3" style="margin-top:50px">  
		<input id="text" type="text" placeholder="Search on Google..." />
		<a  href="notrequired" target="_blank" onclick="this.href='http://www.google.com/search?q=' + encodeURIComponent(document.getElementById('text').value);">
    	<button>Search</button></a>
		</div>
  </div>
</div>	
		

      
<div id="News" class="container">
 <div class="row">
  <div class = "col-md-12">
			<h3 class="title">Latest news</h3>
			<ul class="list">
			<li><a href="#">1.2017 Bentley Bentayga: Finally, Bentley's Ute Emerges<br></a></li>
			<li><a href="#">2.Land Rover Range Rover Sport Supercharged / SVR<br></a></li>
			<li><a href="#">3.Hammer Down: The 25 Most Expensive Cars at the 2015 Monterey Auctions/</a></li>
			<li><a href="#">4.BMW Unveils Retro-Liveried 3.0 CSL Hommage R Concept at Pebble Beach</a></li>
			<li><a href="#">5.Hyundai Vision G Concept Signals Design Direction for Expanded Family of Genesis Products</a></li>
			<li><a href="#">6.Turbo Engines Coming to Porsche 911 Carrera in 2016</a></li>
			<li><a href="#">7.Three Insanity: Next Mazdaspeed 3 to Debut this Fall as a Concept</a></li>
			</ul>
  </div>
 </div>
</div>   
<div id="news" class="container">
 <div class="row">
      <h2 >News &amp; Events</h2>
       		<ul>
       		<div class = "col-md-3">
          	<li> 
            <h3>Renault</h3>
            <p><a href="#">Renault has revealed the new Alaskan concept which previews the company planned production pickup truck, due to go on sale internationally in 2017. The first global pickup from the company, the Alaskan will be built alongside equivalents from Nissan and Mercedes-Benz, the latter of which is expected by 2020.&hellip;</a></p>
           	</li>
       		</div>
       		<div class = "col-md-3">
          	<li>
            <h3>Audi</h3>
            <p><a href="#">Audi has started work on its fifth-generation A6 sedan (internally known as C8). Developed along with the new A7 Sportback and A8 sedan, all three models will share the platform, driveline, chassis as well as electrical systems to keep costs in check. The facelifted Audi A6 Matrix was recently launched in the Indian market. &hellip;</a></p>
          	</li>
       		</div>
	   		<div class = "col-md-3">
          	<li>
            <h3>Maruti</h3>
            <p><a href="#">Motor news	Maruti recently launched the Ciaz SHVS (Smart Hybrid Vehicle by Suzuki) diesel which gets the addition of micro-hybrid technology that includes a stop-start technology, brake energy recuperation and Engine Power Assist systems. This technology makes it the most fuel-efficient car in India at a claimed figure of 28.09kpl.
			The Ciaz SHVS is offered in five trim levels: VDi, VDi (O), VDi+, ZDi, and ZDi+. Here is a look at what each variant has to offer: Prices ex-showroom, Delhi</a></p>
         	</li>
       		</div>
       		<div class = "col-md-12">
            <li>
            <h3>Night vision with pedestrian detection</h3>
            <p><a href="#">Although night vision in vehicles isn't a new technology -- Cadillac offered it in 2000 -- the Mercedes-Benz updated version is called Night View Assist Plus. Unlike the Night View Assist, which has been available in the S-Class since 2005, the new system pinpoints pedestrians, highlighting them on a dashboard display. It's offered in the 2010 E-Class in showrooms late this spring. BMW has a similar system with a pedestrian identifier that also shows the direction the pedestrian is moving. As the distance closes between pedestrian and vehicle, a warning appears on the night vision monitor as well as the head-up display on the windshield if so equipped. BMW offers this system on the 2009 7 Series.</a>
 			</p>
 			</li> 
            <li>
            <h3>Rear-mounted radar</h3>
            <p><a href="#">Backing out of a parking space in a busy lot can be an adventure. Although rear-pointing radar has been around for a few years alerting drivers to unseen objects immediately behind them -- a fence, wall, tree or another vehicle -- new radar technology searches for approaching cross traffic. When it "sees" traffic approaching while you're backing up, it sounds an alarm. Chrysler's version is available in its minivans and is called Cross Path Detection System. It includes visual indicators in the outboard mirrors. Ford's system is called Cross Traffic Alert. Offered in the just-released 2010 Fusion and Mercury Milan, it also has outboard mirror alarm indicators.</a>		</p>
 			</li> 
 			<li>
            <h3>Automatic high-beam control</h3>
            <p><a href="#">In the redesigned RX, Lexus offers a system that automatically illuminates and dims the high-beam headlights in relation to approaching traffic. A camera mounted on the rearview mirror detects when the vehicle is closing in on oncoming traffic, as well as vehicles ahead traveling in the same direction, and disengages the high beams. Mercedes-Benz takes the technology one step further with its Adaptive Highbeam Assist. Also found in the new E-Class, it doesn't merely switch between low and high beams, but reacts by gradually increasing or lowering the light distribution based on the distance of approaching traffic. It also dims the high beams for sharp turns and then re-engages the high beams if there is no approaching traffic once the turn is completed.</a>		</p>
 			</li> 	 
 			<li>
            <h3>Auto Expo 2016 is going to be Bigger and Better this time</h3>
            <p><a href="#">Jaipur: The city of Greater Noida is all set to host yet another episode of countrys largest automobile show, Auto Expo 2016. This will be a 13th edition and will take place during 5-9 February 2016 at Noida Expo Center. The preliminary meeting to chalk out logistics for the show took place on Tuesday.</a>		</p>
 			</li>  
 			<li>
            <h3>Mahindra TUV300 Launching Today</h3>
            <p><a href="#">Mahindra will be unveiling its new compact SUV, the TUV3OO today. The TUV is expected to replace the outgoing Quanto which hasn't fared too well. The battle tank inspired vehicle has been grabbing headlines from past one month and the announcement of launch date further triggered the anticipation. The home-grown automaker is a strategic marketer when it comes to building hype around its models and TUV300s promotion is no different. </a>		</p>
 			</li>
 	  		</div>	
 	</ul>			    
 </div>
</div>
<div id = "service" class="container">
 <div class="row">
 <div class = "col-md-12">
    <img src="images/service.jpg" width = 100%>
    <h1>Service Network</h1>
    <p>Service Station close at hand. Wherever you go, across the length and breadth of this vast nation, our service network follows.
	It's the widest service network. It's the deepest service network. And, when you service 40,000 cars a day with an unmatched 'first-time right' score, we can say, hand on our heart, that you won't find a better, more committed service network anywhere in the world.
	We've even got an award for it. We've been No.1 in the Customer Satisfaction Award for 14 years in a row. It's a survey that rates the after-sales service experience, one that no other global car market leader has ever won.
	How do we pull this feat off? That's because across our over 3060 nationwide service outlets, the only thing our 33000 strong trained service professional have on their mind is your delight.</p>
</div>
</div>
</div>
  <a href="#book" data-toggle="modal" class="btn btn-info navbar-btn navbar-right">BOOK AN APPOINTMENT</a>
    <div class = "modal fade" id = "book" role = "dialog">
  	<div class = "modal-dialog">
  		<div class = "modal-content">
  			<div class = "modal-header">
  			<h1>Service appointment</h1>
  			<div class = "modal-body">
  			 <form id="email_form" action="/Register" method="get" onsubmit="javascript:return validate('email_form','email')">
  			<h4> Registration Form</h4>
  			<label>User Name :</label><br>
			<input type="text" name="name" id="name" /></br>
			<label>email:</label><br>
			<input type="text" name="email" id="email"/></br>
			<label>car details:</label><br>
			<input type="text" name="detail" id="detail" /></br>
			<label>Vehicle Number :</label><br>
			<input type="text" name="number" id="number" /></br>
			<label>date:</label><br>
			<input type="text" name="date" id="date" placeholder="DD/MM/YY"/></br>
			<label>Issue:</label><br>
			<input type="text" name="issue" id="issue" /></br><br>
			<input type="submit" name="register" id="register" value="Register"  /></br>
			</form>
  			</div>
  			<div class = "modal-footer">
  			<a href="#login" data-toggle="modal" class="btn btn-warning"  data-dismiss = "modal">login</a>
			<a class = "btn btn-danger" data-dismiss = "modal">cancel</a>  		
  			</div>
  			</div>
  		</div>
  	 </div>
  </div>
<div class = "modal fade" id = "login" role = "dialog">
  <div class = "modal-dialog">
  	<div class = "modal-content">
  		<div class = "modal-header">
  			<form action="/Login" method="get" >
  			<h1>Login</h1>
  			<div class = "modal-body">
			<label>email:</label><br>
			<input type="text" name="email" id="email" /></br>
			<label>date:</label><br>
			<input type="text" name="date" id="date" placeholder="optional DD/MM/YY"" /></br>
			<label>Issue:</label><br>
			<input type="text" name="issue" id="issue" placeholder="optional" /></br><br>
			<input type="submit" name="login" id="login" value="login"/></br>	
  			</div>
  			</form>
  			<div class = "modal-footer">
  			<a>Dont have an account</a>
  			<a href="#book" data-toggle="modal" class="btn btn-info"  data-dismiss = "modal">Register</a>
			<a class="btn btn-danger" data-dismiss = "modal">cancel</a>  		
  			</div>
  		</div>
  	</div>
  </div>
</div>
<div style="clear: both;">&nbsp;</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>
 <script>
            $("#carousel").carousel({
            	  interval: 1000
            });
</script>
</body>
</html>
    