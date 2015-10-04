<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="tt" tagdir="/WEB-INF/tags"%>


<tt:html>
<html style="background-image:none; background-color:#000; overflow:hidden;">
<tt:head title="${game.video.title}">

	<link type="text/css" rel="stylesheet" href="../../static/styles/css/styleCDT.css">

	<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
	<script src="/static/script/ugslplayer.js"></script>
	<script src="/static/script/utils.js"></script>
	<script src="/static/script/videoplayer.js"></script>
	<script src="/static/script/taggingHistory.js"></script>
	<script src="/static/script/game.js"></script>
	<style>


.jwplayer{
	position:absolute !important;
}
</style>
</tt:head>
<tt:body cssClass="game" pageName="game">
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
		      	<li><a href="/spelinstructies.html">Game Instructions</a></li>
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

<div id="containerGame">
    <div id="videobox">
		<div id="gameCanvas"><div class="chart">		
			<header class="clear extended">
					
				<span id="timer-remaining" class="pull-right"></span>	
			</header>
			
			<section class="reset">
				<div id="vid-overlay-screen" class="row-fluid show">
					<div id="explanation" class="box clean span6">

							<table width="100%" >
								<td style="border:none;" width="30%">
								
										<p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p>
										<div id="timer-intro" class="timer-intro"><strong>GAME STARTS IN: <span  style="color:red">00:00</span></strong></div>
										<p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p><p> &nbsp;</p>
										<h2>We Love Science in a Different Way!</h2>
										
											<h5><i>Check</i> <a target="_blanc" href="http://divetv.ops.labs.vu.nl/app.php">CrowDDriven Dive</a> <i>to find out what we do with the total of <span style="color:#4ec4f6"><strong ><nf:format number="${globalStats.totalTags}" /></strong></span> entered tags...</i></h5>
										

								</td>
								<td style="border:none;" width="70%" height="100%">
									<center>
										<p> &nbsp;</p><p> &nbsp;</p>
									<h2><c:out value="${game.video.title}" /></h2><img width="60%" src="${game.video.imageUrl}"  alt="Vimeo Video" />		
								</center>
								</td>
							</table>
							<div class="chart">
																		<p> &nbsp;</p><p> &nbsp;</p>										<p> &nbsp;</p><p> &nbsp;</p>
								<h2> GAME PLAY INSTRUCTIONS </h2>
								<img bottom="70px;"src="../../static/img/instructions.png" />
							</div>
						</div>

					</div>
													
				</div>
				<center>
					<div id="videoFrame" class="outside">
						<div id="video" class="video"></div>
						<!-- INPUT BAR FOR TAG ENTRIES-->
						<div id="inputBar">	
							<div class="container-input">
								<input type="text" maxlength="42" class="input-mega-xxl" id="inputField" placeholder="Enter tag here" autocomplete='off'/>
							</div>
						</div>


						<div id="tagcontainer" class="outside">	
							<div class="container-tagscreen">
								<div id="rightColumn" class="box span4 col-game">
									<h1 style="font-family: arial; color:#fff">Scoreboard Tags</h1>
									<header class="rich extended">
										<h1 id="playerSessionScore" class="pull-left board span2"></h1>				
										<h2 id="playerPosition" class="pull-right reset">
											<small class="h4">Rank</small>
											<span id="playerPositionMine">-</span> / <span id="playerPositionTotal" class="h4">-</span>
										</h2>
									</div>
									<section class="reset">
										<h3  class="h4 sub-header" style="font-family: arial; color:#fff;text-align:left">Entered Tags:</h3>		
										<div id="tagList" style="font-family: arial; color:#fff" class="tag-list scroll-box"></div>
									</section>
								</div>	 
							</div>	
						</div>
					</div>	
				</section>   		


		</div>
    </div>
</div>

<!-- END: Page Content -->


<!-- BEGIN: Sticky Footer -->
<div id="footer_container">

	<div style="margin: -10px;">
		<img height="5px" width="100%" src="../../static/img/menucolor.png" alt="colormenu"  />	
	</div>
    <div id="footer">
    	<a href="http://divetv.ops.labs.vu.nl/app.php">
       		<img style="margin: 10px 0px 0px 10px; " width="150px" class="float-lt" src="../../static/img/CDD.png" alt="CrowDDriven Tag" />		
       </a>
        <a href="http://crowddriven.nl">
       		<img style="width:80px; margin-top: 10px; margin-right:5px;" class="float-rt" src="../../static/img/logo-vu.png" alt="Vu Logo" />		
       </a>
    	<div class="center">
        	<span style="color:#9099B7; font-size: 0.75em; text-align:center;">&COPY; 2015 - Designed by <a href="http://crowddriven.nl" target="_blank">CrowDDriven</a></span>
   		</div>

		<!-- STOP BUTTON -->
		<div id="stopButton">
			<div class="stop_button">
				<ul>
					<li><a href="/game/${game.id}/recap/${user.id}" class="red_color"><span>stop game</span></a></li>
				</ul>
			</div>
		</div>

    </div>
</div>


<script type="text/javascript">
	jQuery(function() {

		<c:choose>

			<c:when test="${game.video.playerType == 'JW'}">
					var getWidth = $("#gameCanvas").width();
					var getHeight = $("#gameCanvas").height();
				var video = {
						playerType : 'JW',
						sourceUrl : '${game.video.sourceUrl}',
						imageUrl : '${game.video.imageUrl}',
						widthSize: 1200,

					};
			</c:when>
			<c:otherwise>
			var video = null;
			</c:otherwise>
		</c:choose>
		var gameType = "normal";
		window.game = new Game(${game.id}, video, ${game.elapsed}, gameType);
	});
</script>

</tt:body>
</tt:html>