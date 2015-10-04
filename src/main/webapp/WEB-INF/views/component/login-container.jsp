<div id="user-menu" class="top-menu">
	<div id="login-error" class="error">Bad credentials</div>

	<f:form commandName="loginForm" action="/inloggen" method="post" id="user-login">
	    <label for="username">E-mail address</label>
	    <f:input path="emailaddress" type="email" id="username" required="required" />
	
	    <label for="password">Password</label>
	    <f:input path="password" type="password" id="password" required="required" />
	
	    <button id="login" type="submit">Login</button>
	    <a id="signup">Sign up</a>
	</f:form>
</div>


<f:form commandName="form" action="/registreren" autocomplete="off" id="user-register" method="post">
	<div id="register-error" class="error">Bad credentials</div>

    <label for="email">E-mail address</label>
    <f:input path="email" tabindex="4" type="email" id="email" required="required" />

    <label for="password">Password</label>
    <f:password path="auth.password" type="password" tabindex="5" id="password" required="required" />

    <label for="re-password">Repeat Password</label>
    <f:password path="auth.repeatPassword" tabindex="6" type="password" id="re-password" required="required" />

    <label for="username">Username</label>
    <f:input path="auth.name" tabindex="7" type="text" id="username" required="required" /><br/>
    
<!--     <f:checkbox value="" path="agreeTos" id="agree_tos" tabindex="8"/>I agree with the <a href="#" target="_blank">terms and conditions</a> -->

    <button id="register" type="submit">Sign Up</button>
</f:form>


