<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="tt" tagdir="/WEB-INF/tags"%> --%>




<!-- END: Page Content -->

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<tiles:insertDefinition name="baseLayout">
    <tiles:putAttribute name="body">
    
		<script src="${appBaseUrl}/static/script/ugslplayer.js"></script>
		<script src="${appBaseUrl}/static/script/utils.js"></script>
		<script src="${appBaseUrl}/static/script/videoplayer.js"></script>
		<script src="${appBaseUrl}/static/script/taggingHistory.js"></script>
		<script src="${appBaseUrl}/static/script/game.js"></script>
 		
 		<div id="game-container" class="row">
	 		<div id="videobox">
				<div id="gameCanvas">
					<div class="chart">		
					<header class="clear extended">
							
						<!--<span id="timer-remaining" class="pull-right"></span> !-->
					</header>
					
					<section class="reset">
						<div id="vid-overlay-screen" class="row-fluid show">
							<div id="explanation" class="box clean span6">
		
									<table width="100%" >
										<td style="border:none;" width="30%">
										 		<%@ include file="component/top-slider-container.jsp" %>
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
										<img width="100%" bottom="70px;"src="${appBaseUrl}/static/img/instructions.png" />
									</div>
								</div>
		
							</div>
															
						</section>
					</div>
<%-- 						<center> --%>
					<div id="videoFrame" class="outside">
						<div id="video" class="video"></div>
						<!-- INPUT BAR FOR TAG ENTRIES-->
						<div id="inputBar">	
							<div class="container-input">
								<input type="text" maxlength="42" class="input-mega-xxl" id="inputField" placeholder="Enter Tag Here" autocomplete='off'/>
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
			</div>
 		</div>
 		
 		<!-- STOP BUTTON -->
		<div id="stopButton">
			<div class="stop_button">
				<ul>
					<li><a href="/game/${game.id}/recap/${user.id}" class="red_color"><span>stop game</span></a></li>
				</ul>
			</div>
		</div>
 		
 		
 		
		<!-- SCRIPT --> 		
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
 
    </tiles:putAttribute>
</tiles:insertDefinition>

