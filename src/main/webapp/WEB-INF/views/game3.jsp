<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tt" tagdir="/WEB-INF/tags"%>

<link href="../../static/styles/css/style.css" rel="stylesheet" type="text/css">
<tt:html>
<tt:head title="${game.video.title}">
	<script src="/static/script/ugslplayer.js"></script>
	<script src="/static/script/utils.js"></script>
	<script src="/static/script/videoplayer.js"></script>
	<script src="/static/script/taggingHistory.js"></script>
	<script src="/static/script/game.js"></script>
</tt:head>
<tt:body cssClass="game" pageName="game">

<div class="main">  
	   <div class="wrap">  	


			<div class="chart"><h3><c:out value="${game.video.title}" /></h3>
			 <img width="100%" src="../../static/img/videoframe-top.png" alt="" />
	
	<div id="gameCanvas"><div class="chart">		
	
		<header class="clear extended">
			<h1 class="h4 pull-left reset"><c:out value="${game.video.title}" /></h1>			
			<span id="timer-remaining" class="pull-right"></span>	
		</header>
		
		<section class="reset">
			<div id="vid-overlay-screen" class="row-fluid show">
				<div id="explanation" class="box clean span6">
					<div id="timer-intro" class="timer-intro"><small>The game starts in</small><strong>00:00</strong></div>
					<table>
					<tr >
						<td width="50%">
							<div class="instruction_list">
							<h2 class="h4">Instructions</h2>
							<ul>
								<li><span>1.Try to enter as many words as possible to describe what you see or hear</span></li>
								<li><span>2. Confirm a word by pushing [enter] on your keyboard</span></li>
								<li><span>3. Earn points by <strong>matching</strong>, which happens when you enter the same word as another player</span></li>
								<li><span>4. By joining a game, you submit to the following <a href="/voorwaarden" target="_blank">terms and conditions</a></span></li>
							</ul>
							</div>				
							<h3 class="h5">Good luck!</h3>
						</td>
						<td  width="50%">
							<div style="border-left:1px solid #000;" >
								<h2 class="h4">Multiplayer</h2>
								<div id="playerList" class="box">

									</header>
									<section class="reset">
										<ul class="unstyled reset">
										</ul>
									</section>
									
								</div>		
							</div>
						</td>

					</tr>

				</table>

				</div>

			</div>
			
			<div id="videoFrame" class="outside">
				<div id="video" class="video"></div>
			</div>
		</section>
		<div class="chart">
			<footer class="outside">
				<input type="text" maxlength="42" class="input-mega-xxl" id="inputField" autocomplete='off'/>
			</footer>
		</div>
		
	</div>
	
	<div id="rightColumn" class="box span4 col-game">
		<header class="rich extended">
			<h1 id="playerSessionScore" class="pull-left board span2"></h1>				
			<h2 id="playerPosition" class="pull-right reset">
				<small class="h4">Rank</small>
				<span id="playerPositionMine">-</span> / <span id="playerPositionTotal" class="h4">-</span>
			</h2>
		</header>
		<section class="reset">
			<h3 class="h4 sub-header">Your tags:</h3>		
			<div id="tagList" class="tag-list scroll-box">
			</div>
		</section>
	</div>
			          		<div class="stop_button">
				      		<ul>
				      			<li><a href="/game/${game.id}/recap/${user.id}" class="red_color"><span>stop</span></a></li>

				      			<div class="clear"></div>
				    		</ul>


</div>

<script type="text/javascript">
	jQuery(function() {
		<c:choose>

			<c:when test="${game.video.playerType == 'JW'}">
				var video = {
						playerType : 'JW',
						sourceUrl : '${game.video.sourceUrl}',
						imageUrl : '${game.video.imageUrl}'
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