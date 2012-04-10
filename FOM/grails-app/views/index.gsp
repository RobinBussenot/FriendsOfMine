<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
</head>
<body>
  <div id="status" role="complementary">
    <h2>Available Controllers:</h2>
    <ul>
      <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
      </g:each>
    </ul>
  </div>
  <div id="status" role="complementary">
    <h2>Login</h2>
    <g:if test="${flash.authenticationFailure}">
      Login failed: ${message(code:"authentication.failure."+flash.authenticationFailure.result).encodeAsHTML()}
    </g:if>
    <auth:form authAction="login" success="[controller:'Auth', action:'index']" error="[controller:'auth', action:'loginError']">
      User: <g:textField name="login"/><br/>
      Password: <input type="password" name="password"/><br/>
      <input type="submit" value="Log in"/>
      <g:link url="[action:'create',controller:'membre']" > Sign Up</g:link> 
    </auth:form>
  </div>
</body>
</html>