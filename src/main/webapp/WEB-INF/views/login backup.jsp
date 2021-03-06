<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="nf" uri="/WEB-INF/tld/NumberFormat.tld"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
<tt:body pageName="login"> 

	<div class="blackbox" id="top">
	    <div class="inner">
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	    	<p>&nbsp;<br>&nbsp;<br></p>
	      <a href="/"><img src="../../static/img/crowddriven_logo.png" alt="CrowdDriven logo" /></a>
	      		<p>&nbsp;<br>&nbsp;<br></p>
						<c:if test="${user.totalScore > 0}">
							<p class="form-shift">Your <nf:format number="${user.totalScore}" /> score will be added to your overall score after you've logged in.</p>
						</c:if>
				 		<f:form commandName="loginForm" action="/inloggen" id="loginForm" class="form-horizontal">
							<fieldset>

			  					<f:errors path="*" cssClass="error-block" />

			  					<div class="control-group">
			  						<f:label path="emailaddress" cssClass="control-label">Email</f:label>
			  						<div class="controls">
			  							<f:input path="emailaddress" id="loginName" />
			  						</div>
			  					</div>
			  					<div class="control-group">
			  						<f:label path="password" cssClass="control-label">Password</f:label>
			  						<div class="controls">
			  							<f:password path="password" id="loginPassword" />
			  							<p class="help-block"><a href="/wachtwoord-vergeten" class="btn btn-primary btn-large">Forgot your password?</a></p>
			  						</div>
			  					</div>
			  					<div class="form-actions">
					          <a href="#" onclick="document.getElementById('loginForm').submit(); return false" id="submitLogin" class="btn btn-primary btn-large">Log in</a>
			  						<input type="submit" value="Inloggen in mijn account" style="visibility:hidden"/>
			  					</div>
				   			</fieldset>
						</f:form>
		</div>

	</div> 
	<!-- footer !--> 
	<div id="menu">
		<ul>
			<li><a href="#">Instructions</a></li>
			<li><a href="#">About us ?</></li>
			<li><a href="#">Policy</></li>
			<li><a href="#">Play without account</></li>

			<span></span>

	</div>    
   
</tt:body>
	<script type="text/javascript">
	$('loginName').focus();
	</script>
</tt:html>
