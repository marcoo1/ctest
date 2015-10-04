<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="Home">


	<link href="../../static/styles/css/videoSlider.css" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  	<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
  	<!--[if lt IE 9]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]-->

 
</tt:head>
<tt:body cssClass="body" pageName="home">

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

 
</tt:body>
</tt:html>