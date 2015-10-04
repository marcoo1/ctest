<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>

<script src="${appBaseUrl}/static/script/lib/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${appBaseUrl}/static/script/jsVideoSlider/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${appBaseUrl}/static/script/jsVideoSlider/jquery.func.js"></script>


<tiles:insertDefinition name="baseLayout">
    <tiles:putAttribute name="body">
 		
 		<%@ include file="component/sidebar-container.jsp" %>
 	

        <!-- /#sidebar-wrapper -->
 		<%@ include file="component/top-slider-container.jsp" %>
 		<!-- End Top Slider -->

	<!-- AddThis Button BEGIN -->
	<div class="row" style="margin:0px; margin-right:10px;">
		<div style="margin-top:10px; margin-right:10px;" class="addthis_default_style pull-right spaced-bottom"
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
	</div>

<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55bfd5c53c9fb06f" async="async"></script>


	<!-- AddThis Button END -->
		<div class="item-1 content-item" style="display:block;">
		  	<%@ include file="component/home-container.jsp" %>

		<div class="item-2 content-item" style="display: none;">
		   <%@ include file="component/profile-container.jsp" %>
		</div>

		<div class="item-3 content-item" style="display: none;">
		    <%@ include file="component/leaderbords-container.jsp" %>
		</div>
		<div class="item-4 content-item" style="display: none;">
		    <%@ include file="component/campaign-container.jsp" %>
		</div>
		<div class="item-5 content-item" style="display: none;">
		    <%@ include file="component/game-instructions-container.jsp" %>
		</div>
		<div class="item-6 content-item" style="display: none;">
		    <%@ include file="component/gameplay-container.jsp" %>
		</div>
		<div class="item-7 content-item" style="display: none;">
		    <%@ include file="component/badges-container.jsp" %>
		</div>
		<div class="item-8 content-item" style="display: none;">
		    <%@ include file="component/ranks-container.jsp" %>
		</div>
 	
 
 
 		
		<script type="text/javascript" src="${appBaseUrl}/static/script/jsVideoSlider/jquery.thumbGallery.min.js"></script>
		<script type="text/javascript" src="${appBaseUrl}/static/script/jsVideoSlider/jquery.prettyPhoto.js" charset="utf-8"></script> 
 
 	
 
    </tiles:putAttribute>
</tiles:insertDefinition>