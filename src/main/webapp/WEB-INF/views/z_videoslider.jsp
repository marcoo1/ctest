<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>

<%
	String channelName = (String) request.getAttribute("channelName"); 
%>

<script type="text/javascript">
	jQuery(document).ready(function($) {
		var channelName = '<%=channelName %>';
		
		$('#componentWrapper' + channelName).thumbGallery({
			/* GENERAL */
			/*layoutType: grid/line */
			layoutType : 'line',
			/*thumbOrientation: horizontal/vertical */
			thumbOrientation : 'horizontal',
			/*moveType: scroll/buttons */
			moveType : 'buttons',

			/*scrollOffset: how much to move scrollbar and scrolltrack off the content (enter 0 or above) */
			scrollOffset : 0,

			/* GRID SETTINGS */

			/*horizontalSpacing:  */
			horizontalSpacing : 10,
			/*buttonSpacing: button spacing from the grid itself */
			buttonSpacing : 20,
			/*direction: left2right/top2bottom (direction in which boxes are listed) */
			direction : 'left2right',

			/* INNER SLIDESHOW */
			/*innerSlideshowDelay: slideshow delay for inner items in seconds, random value between: 'min, max', 
			enter both number the same for equal time delay like for example 2 seconds: '2,2' */
			innerSlideshowDelay : [ 2, 4 ],
			/*innerSlideshowOn: autoplay inner slideshow, true/false */
			innerSlideshowOn : false
		});

		jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({
			theme : 'pp_default',
			deeplinking : false,
			callback : function() {
				detailClosed();
			}/* Called when prettyPhoto is closed */
		});

	});
</script>


<div id="componentWrapper${channelName}" class="slider-wrapper">
	<div class="thumbContainer">
		<div class="thumbInnerContainer">
			<c:forEach var="channel" items="${channels}">
				<div class='thumbHolder' style="box-sizing: content-box;">
					<a target="_top" href="/start-game/${channel.video.id}"
						title="Play Game: ${channel.video.title}">
						<div class="img">
							<img class="thumb_hidden" src="${channel.video.imageUrl}"
								width="180" height="120" alt="Vimeo Video" />
							<div class="overlay trigger"></div>
						</div>
					</a>
					<p width="100%" class="title">${channel.video.title}</p>
					<span class="totalMatches"><i class="fa fa-eye"></i> Games played:
						${channel.video.timesPlayed}</span> <span class="highscore"><i class="fa fa-globe"></i> High score: <nf:format number="${channel.highscore}" />
					</span>
					<p class="info">Season 1 Episode 2</p>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="thumbBackward thumb_hidden" >
		<img src="${appBaseUrl}/static/img/icons/thumb_backward.png" alt="" width="21" height="31" />
	</div>
	<div class="thumbForward thumb_hidden">
		<img src="${appBaseUrl}/static/img/icons/thumb_forward.png" alt="" width="21" height="31" />
	</div>
</div>
