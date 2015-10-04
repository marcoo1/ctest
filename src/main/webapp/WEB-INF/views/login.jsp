<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tt"%>

<tt:html>
<tt:head title="Home">


	<link href="../../static/styles/css/style.css" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Kotta+One|Cantarell:400,700" rel="stylesheet" type="text/css">
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</tt:head>
<tt:body pageName="login"> 

<div class="wrap">	 
	      <div class="header">
	      	  <div class="header_top">					
					  <div class="profile_details">
				                            <div class="user-info">
							        			
							        						<c:if test="${user != null && !user.anonymous}">
							        							<h4>Hello,<a href="/game/${game.id}/recap/${user.id}">${fn:escapeXml(profile.user.name)}</a></h4>
							        							<ul>
								        							<li class="profile active"><a href="#">Profile </a></li>
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
				             	   <a href=""><img src="${u.user.smallAvatarUrl}" alt="" />	</a>
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
		  	<li><a href="/Leaderbord.html" class="purple"><img src="../../static/img/crown_icon.png" alt="" /><br>Leaderbord</p></a></li>
		  	<li><a href="#" class="yellow"><img src="../../static/img/campaigns_icon.png" alt="" /><br>Campaigns</a></li>
		  	<li><a href="#" class="blue"><img src="../../static/img/about_icon.png" alt="" /><br>About us</a></li>
		  	<div class="clear"></div>	
		  </ul>
		</div>	

		<!-- Login Form !-->

		<div class="chart"><h3>Login</h3>
      		<div class="rotator"><img width="100%" src="../../static/img/videoframe-top.png" alt="" /></div>

      		<div id="login">

					<c:if test="${user.totalScore > 0}">
						<p class="form-shift">Your <nf:format number="${user.totalScore}" /> score will be added to your overall score after you've logged in.</p>
					</c:if>
					<center>
				<div class="container-input">
	          		<div class="column_right_grid">
					 	<div class="sign_in">
					       

	          		       <f:form commandName="loginForm" action="/inloggen" id="loginForm" class="form-horizontal">
								<fieldset class="clearfix">

				  					<f:errors path="*" cssClass="error-block" />

								    	<span>
								 	    	<i><img src="../../static/img/mail.png" alt="" /></i>
								 	    	<f:input path="emailaddress" type="text" id="loginName" value="Enter your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}"/>
								 	    </span>
				  					
				  						 <span>
									 	    <i><img src="../../static/img/lock.png" alt="" /></i>
									 	    <f:input path="password" id="loginPassword" type="password" placeholder="password"/>
									 	</span>
									 	<div class="form-actions">
									          <a href="#" onclick="document.getElementById('loginForm').submit(); return false" id="submitLogin" class="my-button">Log in</a>
							  						<input type="submit" value="Inloggen in mijn account" style="visibility:hidden"/>
					  					</div>
				  						<div class="form-actions">			  					
				  							<input type="submit" class="my-button" value="Sign in" style=""/>
				  						</div>
					   			</fieldset>
							</f:form>

							<h4><a href="/wachtwoord-vergeten">Forget Password?</a> <br><br> <a href="/registreren">Register?</a> </h4>				   
	      				</div>
					</div>
				</div>
			</div>

		</div> 
   
</tt:body>
	<script type="text/javascript">
	$('loginName').focus();
	</script>
</tt:html>
