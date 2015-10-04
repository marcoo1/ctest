<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>


<tt:html>
<tt:head title="Rampage Slider">


	<link href="../../static/styles/css/videoSlider.css" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  	<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
  	<!--[if lt IE 9]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]-->
	<script type="text/javascript" src="../../static/script/jsVideoSlider/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../../static/script/jsVideoSlider/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../../static/script/jsVideoSlider/jquery.prettyPhoto.js" charset="utf-8"></script>

    <script type="text/javascript" src="../../static/script/jsVideoSlider/jquery.func.js"></script>
    <script type="text/javascript" src="../../static/script/jsVideoSlider/jquery.thumbGallery.min.js"></script>
    <script type="text/javascript">
	

		
		jQuery(document).ready(function($) {
				  
			$('#componentWrapper').thumbGallery({	
				/* GENERAL */
				/*layoutType: grid/line */
				layoutType: 'line',
				/*thumbOrientation: horizontal/vertical */
				thumbOrientation: 'horizontal',
				/*moveType: scroll/buttons */
				moveType: 'buttons',
				
				/*scrollOffset: how much to move scrollbar and scrolltrack off the content (enter 0 or above) */
				scrollOffset: 0,
				
				/* GRID SETTINGS */

				/*horizontalSpacing:  */
				horizontalSpacing: 10,
				/*buttonSpacing: button spacing from the grid itself */
				buttonSpacing: 20,
				/*direction: left2right/top2bottom (direction in which boxes are listed) */
				direction: 'left2right',
				
				/* INNER SLIDESHOW */
				/*innerSlideshowDelay: slideshow delay for inner items in seconds, random value between: 'min, max', 
				enter both number the same for equal time delay like for example 2 seconds: '2,2' */
				innerSlideshowDelay:[2,4],
				/*innerSlideshowOn: autoplay inner slideshow, true/false */
				innerSlideshowOn:false
			});		
			
			jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({theme:'pp_default',
											deeplinking: false, 
											callback: function(){detailClosed();}/* Called when prettyPhoto is closed */});
	   
	    });
	
    </script>

 
</tt:head>
<tt:body cssClass="body" pageName="rampage-slider">

			<!-- Play Game !-->
	<div id="componentWrapper" height="300px;">
                         
      	<div class="thumbContainer">
            <div class="thumbInnerContainer">
                <c:forEach var="channel" items="${channels}">
               		<div class='thumbHolder'> 
                        <a target="_top" href="/start-game2/${channel.video.id}" title="Play Game: ${channel.video.title}">
                        	<div class="img">
	                        	<img class="thumb_hidden" src="${channel.video.imageUrl}" width="180" height="120" alt="Vimeo Video" />
								<div class="overlay trigger"></div>
							</div>
                        </a>  
                            <p width="100%" class="title">${channel.video.title}</p>
                            <span class="totalMatches"> games played: ${channel.video.timesPlayed}</span>
                            <span class="highscore"> high score: <nf:format number="${channel.highscore}" /></span>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="thumbBackward thumb_hidden"><img src="../../static/img/icons/thumb_backward.png" alt="" width="21" height="31" /></div>	
    	<div class="thumbForward thumb_hidden"><img src="../../static/img/icons/thumb_forward.png" alt="" width="21" height="31" /></div>  	
    </div>



 
</tt:body>
</tt:html>