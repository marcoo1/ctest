<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="Home">


	<link href="../../static/styles/css/style.css" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  	<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
  	<!--[if lt IE 9]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]-->

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</tt:head>
<tt:body cssClass="body" pageName="home">
<div class="headermain">
 <div class="header">
  	<div class="header_top">
  		<div class="profile_img">	
  			<br>
         	<a href="http://crowddriven.nl"><img width="250px" src="../../static/img/CDT.png" alt="" />		</a>

        </div>	



        <div class="user-info">
			<!-- If logged in !-->
			<c:if test="${user != null && !user.anonymous}">
				
				<!-- INCENTIVE TOTAL TAGS OF USER !-->
				<p style="font-family: 'Lora', serif; font-size: 0.8em; text-align:right; margin-right: 200px; margin-top: 0px:">
					Hello, <c:out value="${user.name}"/>! <br> I know nothing, but you already helped me by entering <strong><nf:format number="${user.totalTags}"/></strong> of <strong ><nf:format number="${globalStats.totalTags}" /></strong> tags and <strong><nf:format number="${user.totalMatches}" /></strong> of <strong><nf:format number="${globalStats.totalMatches}" /></strong> matches overall
				</p>

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
			</c:if>													
		</div>

		<!-- If not logged in or anonymous user !-->
		<c:if test="${user == null || user.anonymous}">	
			
	  	
	  		<p style="font-family: 'Lora', serif; text-align:right; margin-right: 200px; "> 
	  			Game Of Thrones Friends already entered: <br> <span style="color:#fcb150"><strong><nf:format number="${globalStats.totalTags}" /></strong></span> <!-- ${globalStats.totalTags} --> tags in <span style="color:#4ec4f6"><strong><nf:format number="${globalStats.totalMatches}" /></strong></span> <!-- ${globalStats.totalMatches} --> matches 
	  		</p>

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
			</div>
		</c:if>
	</div>	
	<img height="10px" width="100%" src="../../static/img/menucolor.png" alt="colormenu" />	
</div>

<div id="content">
  	<div class="main">  
	    <div class="wrap">  	
		<!-- MENU !-->

			<div class="chart_list">
			  <ul>
			  	<li><a href="/index.html" class="red"><img src="../../static/img/playgame_icon.png" alt="" /><br>Play Game</a></li>
			  	<li><a href="/leaderbord.html" class="purple"><img src="../../static/img/crown_icon.png" alt="" /><br>Leaderbord</p></a></li>
			  	<li><a href="/campaign.html" class="yellow"><img src="../../static/img/campaigns_icon.png" alt="" /><br>Campaigns</a></li>
			  	<li><a href="#" class="blue"><img src="../../static/img/about_icon.png" alt="" /><br>About us</a></li>
			  	<div class="clear"></div>	
			  </ul>
			</div>	
		
			<!-- Play Game !-->

			<div class="graph">	
				<div class="chart">
						<table style="width:100%">
						  	<tr >
							    <td width="10%"></td>
							    <td width="80%">
							    	<div><img width="100%" src="../../static/img/videoframe-top.png" alt="" /></div>
							    		<p>&nbsp;</p>	
							    	<div class="container-outer">
											<h3>Play Game</h3>
									    	<div class="containers">
												<ul class="row equal-cols unstyled clear-both">
													<center>
													<c:forEach var="channel" items="${channels}">						
													<li class="videothumbnail">
														<a style="border:none;  width:80%;" href="/start-game/${channel.video.id}" title="${channel.video.title}" rel="nofollow" class="box channel col" >

															<div class="img">
																<img src="${channel.video.imageUrl}" />
																<div class="overlay trigger"></div>
															</div>

															<h3><p>${channel.video.title}</h3>
															<h4>games: ${channel.video.timesPlayed}<br/>high score: <nf:format number="${channel.highscore}" /></h4>
														</a>
													</li>
													</c:forEach>			
												</ul>
											</div>	
									</div>	
								</td>
								<td width="10%"></td>
						  	</tr>
						</table>
						<p>&nbsp;</p>
					</div>
				</div>
			</div>
</div>
  <!-- FOOTER !-->
  <div class="clear"></div>
</div>
<div class="footer">
	<div class="site-footer">
		<img height="10px" style="margin-bottom: 10px;" width="100%" src="../../static/img/menucolor.png" alt="" />
		<div style="margin-left:50px" display="block" class="copy-right">
				&COPY; 2015 Designed by <a STYLE="font-style: italic; text-decoration: none; color: #11A8AB;" href="http://crowddriven.nl" target="_blank">CrowDDriven</a>
		<div class="container">

  				

				<a target="_blanc" href="http://divetv.ops.labs.vu.nl/app_dev.php"><img width="180px" align="left" style="margin-top: 10px; margin-right: 10px;" src="../../static/img/CDD.png" alt="" />		</a>		</div>		

		    	<a target="_blanc" href="http://www.vu.nl"><img align="right" style="margin-top: 10px; margin-right: 10px;" src="../../static/img/logo-vu.png" alt="" />		</a>		</div>		
	</div>
</div>	
</footer>
</tt:body>
</tt:html>