<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tt" tagdir="/WEB-INF/tags"%>
<tt:html>
<tt:head title="${game.video.title}">
	<script src="/static/script/ugslplayer.js"></script>
	<script src="/static/script/utils.js"></script>
	<script src="/static/script/videoplayer.js"></script>
	<script src="/static/script/taggingHistory.js"></script>
	<script src="/static/script/game.js"></script>

	<link href="../../static/styles/css/stylesGoT.css" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
	  <!--[if lt IE 9]>
	  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	  <![endif]-->

</tt:head>
<tt:body cssClass="game" pageName="game">
	<div class="blackbox" id="top">
	    <div class="inner">
			<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
			<div >
				
				<div style="width:100%; border:none;" id="gameCanvas" >		
				
					<header style="border:none;" lass="clear extended">
						<h1 text-align="middle" ><c:out value="${game.video.title}" /></h1>			
						<span id="timer-remaining" class="pull-right"></span>	
					</header>
					
					<!-- Start game - give instructions!-->
					<section class="reset">
						<div id="vid-overlay-screen" class="row-fluid show">
							<div id="explanation" class="box clean span6">
								<div id="timer-intro" class="timer-intro"><small>The game starts in</small><strong>00:15</strong></div>
							
								<h2 class="h4">Instructions</h2>
								<ul>
									<li>Try to enter as many words as possible to describe what you see or hear</li>
									<li>Confirm a word by pushing [enter] on your keyboard</li>
									<li>Earn points by <strong>matching</strong>, which happens when you enter the same word as another player</li>
									<li>By joining a game, you submit to the following <a href="/voorwaarden" target="_blank">terms and conditions</a></li>
								</ul>				
								<h3 class="h5">Good luck!</h3>
							</div>
							<div class="box clean span6">
								<div id="playerList" class="box">
									<header class="rich">
										<h2 class="h3 pull-left reset">Players</h2>
										<a href="/game/${game.id}/recap/${user.id}" class="btn btn-primary pull-right">stop</a>
									</header>
									<section class="reset">
										<ul class="unstyled reset">
										</ul>
									</section>
									
								</div>		
							</div>
						</div>

						<!-- Start game - show video frame and enable inputform!-->
						<center>
							<div id="videoFrame" class="outside">
								<div id="video" class="video"></div>
							</div>
					   </center>
					</section>
					<p><br></p>

					<!-- input field !-->
					<footer class="outside">
						<input type="text" maxlength="42" class="input-mega-xxl" id="inputField" />
					</footer>
					<p><br></p>
					
				</div>
				
				<!-- highscore form-->
				<div id="rightColumn" class="box span4 col-game">
					<header class="rich extended">
						<h1 id="playerSessionScore" class="pull-left board span2">0</h1>				
						<h2 id="playerPosition" class="pull-right reset">
							<small class="h4">Rank</small>
							<span id="playerPositionMine">-</span> / <span id="playerPositionTotal" class="h4">-</span>
						</h2>
					</header>
					<!--  multiplayer form-->
					<section class="reset">
						<h3 class="h4 sub-header">Your tags:</h3>		
						<div id="tagList" class="tag-list scroll-box">
						</div>
					</section>
				</div>

			</div>
		</div>
	</div>

<script type="text/javascript">
	jQuery(function() {
		<c:choose>
			<c:when test="${game.video.playerType == 'NPO'}">
				var video = {
						playerType : 'NPO',
						fragmentId : ${game.video.fragmentID},
						startTimeWithinEpisode : ${game.video.startTime},
						duration : ${game.video.duration}
					};
			</c:when>
			<c:when test="${game.video.playerType == 'JW'}">
				var video = {
						playerType : 'JW',
						sourceUrl : '${game.video.sourceUrl}',
						imageUrl : '${game.video.imageUrl}',
						widthSize : "100%",
      					aR : "16:9"
					};
			</c:when>
			<c:otherwise>
			var video = null;
			</c:otherwise>
		</c:choose>
		window.game = new Game(${game.id}, video, ${game.elapsed});
	});
</script>

</tt:body>
</tt:html>