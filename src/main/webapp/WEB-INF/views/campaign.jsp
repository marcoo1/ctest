<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="Home">
	<head>
		<title>CrowDDriven Tag</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link type="text/css" rel="stylesheet" href="../../static/styles/css/styleCDT.css">
		<link type="text/css" rel="stylesheet" href="../../static/styles/css/mainSlider.css">
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<script type="text/javascript" src="../../static/script/jquery.spincrement.js"></script>
		<script type="text/javascript" src="../../static/script/jquery.nivo.slider.js"></script>
	</head>
</tt:head>

<tt:body cssClass="body" pageName="home">

<!-- BEGIN: Sticky Header -->
<div id="header_container">
    <div id="header">
       <a href="http://crowddriven.nl">
       	<img style="margin: 10px 0px 0px 20px; " width="250px" class="float-lt" src="../../static/img/CDT.png" alt="CrowDDriven Tag" />		
       </a>


       <nav id="primary_nav_wrap">
		<ul>
		  <li><a href="#">MENU &dtrif; </a>
		    <ul>
		      	<li><a href="/index.html">Homepage</a></li>
		      	<li><a href="/leaderbord.html">Leaderbords</a></li>
		      	<li><a href="/campaign.html">Campaigns</a></li>
		      	<li><a href="/about.html">About us!</a></li>
		    </ul>
		  </li>
		</ul>
    </div>

        <div class="user-info">
			<!-- If logged in !-->
			<c:if test="${user != null && !user.anonymous}">
				
				<!-- INCENTIVE TOTAL TAGS OF USER !-->
				<ul>
			  		<div id="topbar">
						<li> 
							<figure>
								<div id="user-button" class="button" title="Registered users"></div> 
									<figcaption>
		       							<form action="/uitloggen">
											<button style="float: left; display:block;" type="submit">Log out</button>
										</form>		
	   								</figcaption>
	   						</figure>
	   					</li>

						<li> <a><div id="help-button" class="button" title="Help"></div></a></li>
					</div>
				</ul>
				    <img height="10px" width="100%" src="../../static/img/menucolor.png" alt="colormenu" />	
			</c:if>													
		</div>

		<!-- If not logged in or anonymous user !-->
		<c:if test="${user == null || user.anonymous}">	


	  		<ul>
	  			<div id="topbar">	
					<li> 
						<figure>
							<div id="user-button" class="button" title="Registered users"></div> 
							<figcaption>
	       						<div style="display: block;" id="user-menu" class="top-menu">
	       							<table>
	       								<th>
		       								<form action="/inloggen">
											   <button style="float: left; display:block;" type="submit">Login</button>
											</form>						
	       								</th>

	       								<th>
											<form action="/registreren">
											   <button style="margin-left: 30px; float: right; display:block;"type="submit">Register</button>
											</form>
										</th>
									</table>
								</figcaption>

	   					</figure>
	   					
		   			</li>

					<li> <a><div id="help-button" class="button" title="Help"></div></a></li>
				</ul>
				    <img height="10px" width="100%" src="../../static/img/menucolor.png" alt="colormenu" />	
			</div>
		</c:if>
	</div>	


</div>
<!-- END: Sticky Header -->
 
<!-- BEGIN: Page Content -->
<div id="container">
    <div id="content">

		<!-- START: STATISTIC DIV -->
		 <<div id="containerStats">
			<table>
				<tr>
					<td style="border:none;"></td>
					<td style="border:none; font-size: 1.3em" colspan="3"><h2>OVERALL STATISTICS</h2></td>
				</tr>
			  <tr>
			    <td id="title"><strong>PLAYED GAMES</strong></td>
			    <td id="title">ENTERED TAGS</td>
			    <td id="title">HIGHEST RANK</td>
			    <td id="title">BEST USER</td>	
			    <td id="title" style="border-right: 0;">TOP SCORE</td>
			  </tr>
			  <tr>
				<td><div class="spincrement"><nf:format number="${globalStats.totalMatches}" /></div></td>
				<td><div class="spincrement"><nf:format number="${globalStats.totalTags}" /></div></td>
				<td id="rank"><img src="../../static/img/unsullied.png"  height="40%" width="40%"></img></td>
				<td id="uname">TagKing09</td>
			    <td style="border-right: 0;"><div class="spincrement">3840</div></td>
			  </tr>
			</table>
		</div>
		<!-- END: STATISTIC DIV -->


    	<!--MainSlider Start !-->

    	
        <div class="slider-wrapper theme-dark">
            <div id="slider" class="nivoSlider">
                <img src="../../static/img/khaleesi.jpg" data-thumb="../../static/img/khaleesi.jpg" alt="" title="New episodes are available to play <br> right now ! Come and join the fun !" />
                <a href="http://divetv.ops.labs.vu.nl/app_dev.php"><img src="../../static/img/jonsnow.jpg" data-thumb="../../static/img/jonsnow.jpg" alt="" title="Check CrowDDriven Dive to find out what <br> we do with the total of 517 entered tags." /> /></a>
                <img src="../../static/img/stark.jpg" data-thumb="../../static/img/stark.jpg" alt=""/>
                <img src="../../static/img/snowman.jpg" data-thumb="../../static/img/snowman.jpg" alt="" />
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>. 
            </div>
        </div>
					

		    <!-- MainSlider End!-->
	    </div>
	    <div id="chart"><h1> Campaigns</h1></div>
		<div id="noscroll" class="chart">
			<h1> Rampage Game Campaign</h1>
			<p style="color:#fff"> Tag as much as possible and stretch the time till you are Game over</p>
	        <iframe  height="400px" width="90%" src="rampage-slider"></iframe>
	    </div>
	    <div class="chart">    
			<div><h1> Personel Tagging Campaign</h1></div>
	        <iframe height="400" width="90%" src="videoslider"></iframe>
		</div>
		<div class="chart">    
			<div><h1> Location Tagging Campaign</h1></div>
	     <iframe height="400" width="90%" src="videoslider"></iframe>
		</div>
	    <div class="chart">    
			<div><h1> Event Tagging Campaign</h1></div>
	        <iframe height="400" width="90%" src="videoslider"></iframe>
		</div>
		<div> &nbsp;</div><div> &nbsp;</div>
		<div>
    </div>
</div>

<!-- END: Page Content -->



<!-- BEGIN: Sticky Footer -->
<div id="footer_container">
	<div style="margin: -10px;">
	<img height="5px" width="100%" src="../../static/img/menucolor.png" alt="colormenu" />	
	</div>
    <div id="footer">
    	<a href="http://crowddriven.nl">
       		<img style="margin: 10px 0px 0px 10px; " width="150px" class="float-lt" src="../../static/img/CDD.png" alt="CrowDDriven Tag" />		
       </a>
        <a href="http://crowddriven.nl">
       		<img style="width:80px; margin-top: 10px; margin-right:5px;" class="float-rt" src="../../static/img/logo-vu.png" alt="Vu Logo" />		
       </a>
    	<div class="center">
        	<span style="color:#9099B7; font-size: 0.75em; text-align:center;">&COPY; 2015 - Designed by <a href="divetv.ops.labs.vu.nl/app.php" target="_blank">CrowDDriven</a></span>
   		</div>

    </div>
</div>
<!-- END: Sticky Footer -->
   <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>


<script type="text/javascript">
	$(document).ready(function (){
		$('.spincrement').spincrement({
			from: 0.0,
			decimalPlaces: 0,
			duration: 20000,
		});
	});
</script>
</tt:body>
</tt:html>