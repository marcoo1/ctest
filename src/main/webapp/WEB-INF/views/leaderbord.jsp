<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="leaderbord">


	<link href="../../static/styles/css/style.css" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</tt:head>
<tt:body cssClass="body" pageName="leaderbord">
<div class="wrap">	 
	      <div class="header">
	      	  <div class="header_top">					
					  <div class="profile_details">
				                            <div class="user-info">
							        			
				        						<c:if test="${user != null && !user.anonymous}">
				        							<h4>Hello, <a href=""><c:out value="${user.name}"/>!</a></h4>
				        							<ul>
					        							<li class="profile active"><a href="/profiel/${user.id}">Profile </a></li>
					        							<li> | </li>
														<li class="logout"><a href="/uitloggen">log out &raquo;</a></li>
													<span></span>
												</c:if>
												<c:if test="${user == null || user.anonymous}">	
			        								<h4>Hello, Anonymous player </h4>
				        							<ul>	
													<li class="logout"><a href="/inloggen">log in &raquo;</a></li>
													<li> | </li>
													<li class="logout"><a href="/registreren">register &raquo;</a></li>
													<span></span>
												</c:if>
							        			<div class="clear"></div>		
							        			</ul>
							        		</div>

							               	<div class="profile_img">	
							             	   <a href="/profiel/${user.id}"><img src="${user.smallAvatarUrl}" alt="" />	</a>
							                </div>		
							             	<div class="clear"></div>	
                
	  	
					    </div>	
		 		      <div class="clear"></div>				 
				   </div>
			</div>	  					     
	</div>

  	<div class="main">  
	    <div class="wrap">  	

		<!-- MENU !-->

		<div class="chart_list">
		  <ul>
		  	<li><a href="/index.html" class="red"><img src="../../static/img/playgame_icon.png" alt="" /><br>Play Game</a></li>
		  	<li><a href="/leaderbord.html" class="purple"><img src="../../static/img/crown_icon.png" alt="" /><br>Leaderbord</p></a></li>
		  	<li><a href="/campaign.html" class="yellow"><img src="../../static/img/campaigns_icon.png" alt="" /><br>Campaigns</a></li>
		  	<li><a href="#" class="blue"><img src="../../static/img/about_icon.png" alt="" /><br>About us</a></li>
		  	<div class="clear"></div>	
		  </ul>
		</div>	
		
		<!-- Play Game !-->

		<div class="graph">	
			<div class="chart"><h3>Play Game</h3>
				<div class="rotator"><img width="100%" src="../../static/img/videoframe-top.png" alt="" /></div>
			</div>
		</div>

					    		<div class="row equal-cols">
		<div class="box span4 col">
			<header class="header rich"><h2 class="h3 reset">Leaderbord</h2></header>
			<section class="reset scroll-box">
				<ol class="unstyled reset">
				<c:forEach items="${globalStats.topScores.topTen}" var="u" varStatus="status">
					<li class="chart-entry"><a href="/profiel/${u.user.id}">
					<span class="index pull-left">${status.index + 1}</span>
					<img src="${u.user.smallAvatarUrl}" />
					${fn:escapeXml(u.user.name)}
					<span class="score pull-right h5"><nf:format number="${u.score}" /></span>				
					</a></li>
				</c:forEach>
				</ol>
			</section>
		</div>
	
		<!-- #tagcloud -->
		<div class="box span4 col leading">

			<header class="header rich"><h2 class="h3 reset">Most popular tags <small>last 7 days</small></h2></header>
			<section class="reset fixed-low">
				<ul class="tagcloud unstyled">
					<c:forEach items="${globalStats.tagCloud}" var="tag">
						<li class="tag-entry size-${tag.relativeSize}"><a href="/tag/${tag.normalizedTag}">${tag.normalizedTag}</a></li>
					</c:forEach>
				</ul>
			</section>
		</div>
		
		<tt:games-queue dynamic="false"/>
		
	</div>
				</div>
			</div>

		<div class="copy-right">
				<p>&COPY; 2015 Designed by <a href="http://crowddriven.nl" target="_blank">CrowDDriven</a> </p>
	 	 </div>  
</tt:body>
</tt:html>