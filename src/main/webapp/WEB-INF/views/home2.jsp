<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="Home">


	<link href="../../static/styles/css/stylesGoT.css" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</tt:head>
<tt:body cssClass="body" pageName="home">


	<div class="blackbox" id="top">
	    <div class="inner">
		<!--h2>Kanalen</h2-->
			<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	
	    	<h1>Play Game</h1>
			<ul >
				<center>
				<c:forEach var="channel" items="${channels}">
				
				<li>
					<a style="border:none; width:80%;" href="/start-game/${channel.video.id}" title="${channel.video.title}" rel="nofollow" class="box channel col" >
						<div class="img">
							<img src="${channel.video.imageUrl}" />
							<div class="overlay trigger"></div>
						</div>
						<h3 class="h5">${channel.video.title}</h3>
						<p class="small">games: ${channel.video.timesPlayed}<br/>high score: <nf:format number="${channel.highscore}" /></p>
					</a>
				</li>
				</c:forEach>			
			</ul>
		</centeR>
				    	<p>&nbsp;<br>&nbsp;<br></p>

			<div >
				<header class="header rich"><h2 class="h3 reset">Top Scorers <small>last 7 days</small></h2></header>
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

	   	</div>
	</div>
	<div id="menu">




				<c:if test="${user != null && user.playerBarVisible}">
						<div class="span3 box media col">
							<tt:profileLink anonymous="${user.anonymous}" id="${user.id}">
								<c:if test="${user.anonymous}">
									<img src="${user.avatarUrl}" class="pull-left" />
									<h2 class="h5 reset">Hello, anonymous</h2>
								</c:if>
								<c:if test="${!user.anonymous}">
									<img src="${user.avatarUrl}"class="pull-left" />
									<h2 class="h5 reset" >Hello, <c:out value="${user.name}"/>!</h2>
								</c:if>								
								<p class="reset"><strong class="h1"><nf:format number="${user.totalScore}" /></strong></p>
								<p class="reset small">Your overall score</p>
							</tt:profileLink>
						</div>
						<c:if test="${user != null && user.countNewPioneerMatches > 0}">
							<div class="span3 box media col">
								<a href="/profiel/${user.id}#pionier" class="unstyled">
									<img src="/static/img/match-pioneer-xl.png" class="pull-left" />
									<p class="reset">explanation &raquo;</p>	
									<p class="reset"><strong class="h1">+ <nf:format number="${user.countNewPioneerMatches * 150}" /></strong></p>
									<p class="reset small">since your last game</p>
								</a>
							</div>
						</c:if>
					</c:if>
						<div class="menu">
						<ul class="pull-right">		
							<c:if test="${user != null && !user.anonymous}">
								<li><a href="/uitloggen">log out &raquo;</a></li>
								<span></span>
							</c:if>
							<c:if test="${user == null || user.anonymous}">		
								<li><a href="/inloggen">log in &raquo;</a></li>
								<li><a href="/registreren">register &raquo;</a></li>
								<span></span>
							</c:if>
						</div>
						</ul>

					<c:if test="${globalStats.currentlyPlaying > 0}">
						<p class="online">
							<strong>${globalStats.currentlyPlaying} ${globalStats.currentlyPlaying == 1 ? 'player' : 'players'}</strong> currently online
						</p>
					</c:if>
				

		</div>    

	

	
	<div>
		
		
	</div>
		
	</div>

</tt:body>
</tt:html>