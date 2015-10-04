<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>

<script src="${appBaseUrl}/static/script/lib/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${appBaseUrl}/static/script/jsVideoSlider/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${appBaseUrl}/static/script/jsVideoSlider/jquery.func.js"></script>

<tiles:insertDefinition name="baseLayout">
    <tiles:putAttribute name="body">
 		
 		<%@ include file="component/statistic-container.jsp" %>
 	

        <!-- /#sidebar-wrapper -->
 		<%@ include file="component/top-slider-container.jsp" %>
 		<!-- End Top Slider -->

	<!-- AddThis Button BEGIN -->

	<div style="margin-top:10px; margin-right:10px;" class=" addthis_default_style pull-right spaced-bottom"
		addthis:url="${staticModel.socialReferenceHome}"
    	addthis:title="${staticModel.socialReferenceTitle}"
		addthis:description="${staticModel.socialReferenceDescription}">
		<a class="addthis_button_preferred_1"></a>
		<a class="addthis_button_preferred_2"></a>
		<a class="addthis_button_preferred_3"></a>
		<a class="addthis_button_preferred_4"></a>
		<a class="addthis_button_compact"></a>
		<a class="addthis_counter addthis_bubble_style"></a>
	</div>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55bfd5c53c9fb06f" async="async"></script>


	<!-- AddThis Button END -->
 		
 		<div class="chart"><h2 style="text-align:center">How to play CrowDDriven Tag</h2>
		</div>
<table width="100%"cellpadding="0" cellspacing="0">
		<!-- Gameplay !-->
	<tr>
		<td valign="top" width="48%">
			<div style="float:right;">
				<h1 style="text-align:right;"> Gameplay</h1>
				<ul>
					<li> Watch the video and simultaneously enter Tags.</li>
					<li> Insert tags in the input bar underneath the video.</li>
					<li> After entering a tag, press the "Enter" button on your keyboard.</li>
					<li> You have two minutes to enter as many tags as you can.</li>
				</ul>

			</div>
			<img float="right" width="100%" src="http://localhost:8080/static/img/instructions.png">
		</td>
		<td align="center" width="4%">
			<img src="mainline.png">
		</td>
		<td width="48%">
		</td>
	</tr>
		<!-- Scoring !-->
	<tr>
		<td width="48%">

		</td>
		<td align="center" width="4%">
			<img display="block" src="mainline.png">
		</td>
		<td valign="top" width="48%">
			<div style="float:left;">
				<h1 style="text-align:left;">Scoring</h1>
				<p>Every Tag you enter in CrowDDrivenTag is rewarded with points, these points unlock higher ranks and new badges. Some tags reward more points than others. Here is an overview of the differt type of Tags and their Rewards: </p>

			</div>
			<img width="60%"  margin-top="-2px" src="scoring.png">
		</td>
	</tr>
			<!-- Badges !-->
	<tr>
		<td width="48%">

		</td>
		<td align="center" width="4%">
			<img src="mainline2.png">
		</td>
		<td width="48%">
			<div style="float:left;">
				<h1 style="text-align:left;">Badges</h1>
				<p>Obtainable badges in CrowDDriven Tag: </p>

			</div>

		</td>
	</tr>
	<!-- Ranks!-->
	<tr>
		<td width="48%">
			<div style="float:right;">
				<h1 style="text-align:right;">Ranks</h1>
				<p>A rank system is implemented in CrowDDriven Tag, the higher your score is, the higher your rank will be. Every player starts Unranked and is able to reach the highest rank: Khaleesi. Easier said than done, it takes a lot of effort and persistance to reach Khaleesi, do you have what it takes?</p>

			</div>
		</td>
		<td align="center" width="4%">
			<img src="mainline.png">
		</td>
		<td width="48%">


		</td>
	</tr>




</table>
		<div id="ps_slider" class="ps_slider">
			<a class="prev disabled"></a>
			<a class="next disabled"></a>
			<div id="ps_albums">
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/mapmaker.png" alt=""/><div class="ps_desc"><h2>Map Maker</h2><span>Extraordinary skill in cartography makes you a map maker. Mapping terrain and identifiying locations is your strong point. Badge is awarded for tagging 30 different locations.</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/armor.png" alt=""/><div class="ps_desc"><h2>Armor Of Kings</h2><span>You have proven to deserve the armor that only kings can wear by your in-game performance. Badge is awarded for having 100 confirmed tags in than 15 games</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/famface.png" alt=""/><div class="ps_desc"><h2>Familiar Faces</h2><span>No one goes unnoticed by you, you know your people and therefore deserve this badge.Badge is awarded for tagging more than 35 characters in-game</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/nothing.png" alt=""/><div class="ps_desc"><h2>You Know Nothing</h2><span>You need to try harder, is this the first time your watching GOT ? Badge is awarded for having less than 10 matched tags in 10 games. </span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/mountain.png" alt=""/><div class="ps_desc"><h2>Moving Mountiains</h2><span>With the effort you put in its possible to move the biggest mountains. Badge is awarded for having played more than 20 games in 24hrs</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/wiseguy.png" alt=""/><div class="ps_desc"><h2>Wise Guy</h2><span>You are a true Wise Guy and your knowledge base is spread over many fields. Badge is awarded for having tagged more than 20 different characters, locations and actors</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/shine.png" alt=""/><div class="ps_desc"><h2>Shining Bright</h2><span>The database of an armory is placed in your head, you know every piece of armor and weaponary possible. Badge is awarded for tagging over 30 pieces of armor and weapons</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/defender.png" alt=""/><div class="ps_desc"><h2>The Defender</h2><span>No one gets past you, you defend the throne like a true king. Badge is awarded for holding the first place on the leaderboards for longer than 7 days</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/small.png" alt=""/><div class="ps_desc"><h2>Small Sacrifices</h2><span>Sadly you put minimal effort into this game and give up too soon. Badge is awarded for quiting more than 5 games without completing them </span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/boob.png" alt=""/><div class="ps_desc"><h2>Grand Booby Spotter</h2><span>You are definitely a boobs guy, not one nipple slipped past your attention. Badge is awarded for tagging over 30 scenes in which a womans breasts were visible.</span></div></div>
				
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/ass.png" alt=""/><div class="ps_desc"><h2>Legendary butt Scout</h2><span>A true scout, your attention is sparkled by the behinds of woman. Badge is awarded for scouting over 30 different scenes in which a womans behind is visible.</span></div></div>
			
				<div class="ps_album" style="opacity:0;"><img src="../../static/img/albums/stark.png" alt=""/><div class="ps_desc"><h2>Survivor Of The Iron Winter</h2><span>A survivor of the Iron Winter, the leaderboard showed your name for over 2 months. Badge is awarded for holding a position in the leaderboard for a period of 2 months</span></div></div>
			</div>	
		</div>
		
		<div id="ps_overlay" class="ps_overlay" style="display:none;"></div>
		<a id="ps_close" class="ps_close" style="display:none;"></a>
		<div id="ps_container" class="ps_container" style="display:none;">
			<a id="ps_next_photo" class="ps_next_photo" style="display:none;"></a>
		</div>
	
	</div>

 
    </tiles:putAttribute>
</tiles:insertDefinition>