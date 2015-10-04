<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>

<script src="${appBaseUrl}/static/script/lib/jquery-1.11.3.min.js"></script>

<tiles:insertDefinition name="baseLayout">
    <tiles:putAttribute name="body">
 		
 		<%@ include file="component/statistic-container.jsp" %>
 		<!-- End statistic-container -->
 
 		<div id="recap-container" class="row">
 			<h3 style="color:#fff"><c:out value="${game.video.title}" /></h3>
			<center>
				 <img width="40%" src="/static/img/recapholder.png" alt="" />
				 <h1 style="font-family:arial;color: #fff"> RECAP </h1>
				 <table style="font-family:arial;color: #fff"style="line-height:1.3em;">
						<tr>
							<th colspan="2">Your contribution to the game</th>
							<th class="text-right">points</th>
						</tr>
						<tr>
							<td><img src="/static/img/playgame_icon.png" alt="match with other player" /></td>
							<td><strong><nf:format number="${recap.summary.countEmptyTags}" /></strong> ${recap.summary.countEmptyTags == 1 ? 'tag' : 'tags' } unmatched <span class="help" title="If another player matches this word later on this you will earn 145 points">?</span></td>
							<td class="text-right"><nf:format number="${recap.summary.countEmptyTags * 5}" /></td>
						</tr>
						<tr>
							<td><img src="/static/img/match-dictionary.png" alt="match with our Dictionary" /></td>
							<td><strong><nf:format number="${recap.summary.countDictionaryMatches}"/></strong> ${recap.summary.countDictionaryMatches == 1 ? 'dictionary match' : 'dictionary matches' } <span class="help" title="A dictionary match will earn you 25 points">?</span></td>
							<td class="text-right"><nf:format number="${recap.summary.countDictionaryMatches * 25}" /></td>
						</tr>
						<tr>
							<td><img src="/static/img/match-social.png" alt="match with other player" /></td>
							<td><strong><nf:format number="${recap.summary.countMatchingTags}"/></strong> ${recap.summary.countMatchingTags == 1 ? 'match' : 'matches' } with other players <span class="help" title="Entering the same tag as one of your co-players will earn you 50 points">?</span></td>
							<td class="text-right"><nf:format number="${recap.summary.countMatchingTags * 50}" /></td>
						</tr>
						<tr>
							<td><img src="/static/img/match-pioneer.png" alt="Pioneer match" /></td>
							<td><strong><nf:format number="${recap.summary.countPioneerTags}"/></strong> ${recap.summary.countPioneerTags == 1 ? 'pioneer match' : 'pioneer matches' } <span class="help" title="If you were the first to enter a word then the first match will earn you 145 points">?</span></td>
							<td class="text-right"><nf:format number="${recap.summary.countPioneerTags * 100}" /></td>
						</tr>
						<tr>
							<td><img src="/static/img/match-location.png" alt="Location match" /></td>
							<td><strong><nf:format number="${recap.summary.countPioneerTags}"/></strong> ${recap.summary.countPioneerTags == 1 ? 'pioneer match' : 'You achieved a location award you bastard' } <span class="help" title="If you were the first to enter a word then the first match will earn you 145 points">?</span></td>
							<td class="text-right"><nf:format number="${recap.summary.countPioneerTags * 100}" /></td>
						</tr>
						<tr>
							<td></td>
							<td><strong>Total score</strong></td>
							<td class="text-right"><nf:format number="${recap.ownerScore}" /></td>
						</tr>
	
					</table>
			</center>
			<div class="chart" style="color:#fff" id="my-timer">
				<p>&nbsp;</p>			<p>&nbsp;</p>			<p>&nbsp;</p>
	        	<h3 style="text-transform:none">The next game will start in <span style="color:red"><b id="show-time">10</b></span> seconds</h3>        
			</div>
			
			<center>
			<h1>Play Game</h1>
			<div class="videoboxrecap">
				<ul >
	
					<c:forEach var="channel" begin="1" end="4" items="${channels}">
	
					<li>
						<a style="border:none; width:80%;" href="/start-game/${channel.video.id}" title="${channel.video.title}" rel="nofollow"  >
	
							<div class="video3" style="height:300px;">
								<div class="img">
									<img src="${channel.video.imageUrl}" />
									<div class="overlay trigger"></div>
								</div>
							</div>
	
						</a>
					</li>
					<!-- COUNTDOWN FOR NEW GAME-->
	
					    <script type="text/javascript">
					    	var url = "/start-game/${channel.video.id}";
					        var settimmer = 0;
					        $("document").ready(function(){
					        	    var tc = document.getElementById("txtCss");
									var ary = tc ? tc.getElementsByTagName("a") : [];
										if(ary.length >= 2)
										    ary[0].href = ary[1].href;
	
					                window.setInterval(function() {
					                    var timeCounter = $("b[id=show-time]").html();
					                    var updateTime = eval(timeCounter)- eval(0.25);
					                    $("b[id=show-time]").html(updateTime);
	
					                    if(updateTime == 0){
					                        window.location = (url);
					                    }
					                }, 1000);
	
					        });
					    </script>
					</c:forEach>			
				</ul>
			</div>
			</center>
 		</div>
 
 
		 
 		<script type="text/javascript">
	 		$(document).ready(function() {
	 			// SHOW NUMBER AS INSCREASING
	 			$('.spincrement').spincrement({
	 				from: 0.0,
	 				decimalPlaces: 0,
	 				duration: 20000,
	 			});
	 		});
 		</script>
 
    </tiles:putAttribute>
</tiles:insertDefinition>