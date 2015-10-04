<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="Landing">


	<link href="../../static/styles/css/style.css" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</tt:head>
<tt:body cssClass="landing" pageName="landing">
<!-- HEADER !-->
  <div class="header">
  	  <div class="header_top">					
			  <div class="profile_details">


			  			<div class="container-outer-mobile">	
		             	   <a href="http://crowddriven.nl"><img width="250px" src="../../static/img/CDT.png" alt="" />		</a>
		                </div>		
		                            <div class="user-info">
					        			
		        						<c:if test="${user != null && !user.anonymous}">
		        							<h4>Hello, <a href=""><c:out value="${user.name}"/>!</a></h4>
			        							<ul>
											  	<div id="topbar">
													
														<li> <figure><div id="user-button" class="button" title="Registered users"></div> <figcaption>




																</div>
									   						</figcaption></figure>
									   					</li>
														<li> <div id="help-button" class="button" title="Help"></div></li>
												</ul>
											</div>



										</c:if>
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
									       									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									       								</th>
									       								<th>
																		<form action="/registreren">
																		   <button style="float: right; display:block;"type="submit">Register</button>
																		</form>
																	</th>
																</table>
									   							</figcaption>
									   					</figure>
									   				</li>

													<li> <a><div id="help-button" class="button" title="Help"></div></a></li>
												</ul>
											</div>
											<span></span>
											


										</c:if>
					        			<div class="clear"></div>		
					        			</ul>
					        		</div>


			    </div>	
 		      <div class="clear"></div>	
 		      <img height="10px" width="100%" src="../../static/img/menucolor.png" alt="" />
		   </div>
	</div>	

		<!-- Play Game !-->
	    <div class="wrap">  	



		<div class="graph">	
			<div class="chart">
				<img width="100%" src="../../static/img/aboutheader.jpg" alt="" />
				 <div class="container-outer-mobile">
					<table style="width:100%">
					  <tr >
					  	<td width="5%"></td>
					    <td width="45%">
					    		<p >&nbsp;</p>	
					    		<h3>About Crowddriven tag</h3>
					    		<p >&nbsp;</p>	
				      		
						  		<P STYLE="font-size: 1em; font-family: Verdana;" class="txt-lt"> Hi, my name is Jon Snow and I need your help. They say I know nothing and they&apos;re right. That&apos;s why I need you to help me gain knowledge. 
						  		<br><br>
								The game you are about to play will help me and all other Game of Thrones enthusiasts to find exactly what we are looking for related to GOT information. Every game you play will help the community by improving the search results in our search engine, check <a href="http://divetv.ops.labs.vu.nl/app_dev.php" STYLE="font-style: italic; text-decoration: none; color: #11A8AB;" >CrowDDriven Dive</a>. 
								<br><br>
								Registering is not necessary, in fact you can start playing the game right now by pressing the video thumbnail on the right. If you want to save your progress and earn badges and ranks registry is necessary.   

					    		<p>&nbsp; </p>
				      </div>
				      <div class="row equal-cols">
				      </div>

	</div>

					    		

						</td>
						<td width="45%">
<p>&nbsp;</p>
										<ul class="row equal-cols unstyled clear-both">
											<center>
											<c:forEach var="channel" items="${channels}" end="0">						
											<li >
												<a style="border:none;  width:80%;" href="/start-game/${channel.video.id}" title="${channel.video.title}" rel="nofollow" class="box channel col" >

													<div  class="img">
														<img align="center" style="display: inline" src="${channel.video.imageUrl}" />
														<div class="overlay trigger"></div>
													</div>

													<h3><p>${channel.video.title}</h3>
													<h4>games: ${channel.video.timesPlayed}<br/>high score: <nf:format number="${channel.highscore}" /></h4>
												</a>
											</li>
											</c:forEach>			
										</ul>
									</div>	
						</td>
						



						<td width="5%"></td>
					  </tr>
					</table>
										    		<p>&nbsp;</p>

				</div>
			</div>
	<div class="instructions">
		<ul>
			<li class="box rich order span3 col"><span class="index">1</span><p style="color: #000000;"> Click on Play Game on the video</li>
			<li class="box rich order span3 col"><span class="index">2</span><p style="color: #000000;"> Enter as many words as you can to describe what you see and hear</li>
			<li class="box rich order span3 col"><span class="index">3</span><p style="color: #000000;"> Score points by entering the same words as other players.</li>
			<li class="box rich order span3 col"><span class="index">4</span><p style="color: #000000;"> Read the <a style="color: #11A8AB;" href="/spelinstructies">instructions</a> and <a style="color: #11A8AB;" href="/registreren">register</a> to save your score.</li>
		</ul>
	</div>

	 	
	
  </div>


  <!-- FOOTER !-->
  <div class="clear"></div>
</div>
	<div class="site-footer">
		<img height="10px" style="margin-bottom: 10px;" width="100%" src="../../static/img/menucolor.png" alt="" />
		<div style="margin-left:50px" display="block" class="copy-right">
				&COPY; 2015 Designed by <a STYLE="font-style: italic; text-decoration: none; color: #11A8AB;" href="http://crowddriven.nl" target="_blank">CrowDDriven</a>
		<div class="container">

  				

				<a target="_blanc" href="http://divetv.ops.labs.vu.nl/app_dev.php"><img width="180px" align="left" style="margin-top: 10px; margin-right: 10px;" src="../../static/img/CDD.png" alt="" />		</a>		</div>		

		    	<a target="_blanc" href="http://www.vu.nl"><img align="right" style="margin-top: 10px; margin-right: 10px;" src="../../static/img/logo-vu.png" alt="" />		</a>		</div>		
	</div>
</div>	
	<script type="text/javascript">
	$('loginName').focus();
	</script>


</tt:body>
</tt:html>