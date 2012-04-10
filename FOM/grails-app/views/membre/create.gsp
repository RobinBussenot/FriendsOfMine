<%@ page import="fom.Membre" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'membre.label', default: 'Membre')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <a href="#create-membre" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
  </div>
  <div id="create-membre" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${membreInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${membreInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
    </g:hasErrors>
    <auth:form authAction="signup" success="[controller :'Membre' ,action:'index']" error="[controller:'Membre', action:'create']">
      <fieldset class="form">
        <div id="status" role="complementary">
          Login : <input type="text" name="login" value="${fieldValue(bean:membreInstance,field:'login')}"/>
          email : <input type="text" name="email" value="${fieldValue(bean:membreInstance,field:'email')}"/>
          name : <input type="text"  name="name"  value="${fieldValue(bean:membreInstance,field:'nom')}"/>
          firstname :<input type="text"  name="prenom" value="${fieldValue(bean:membreInstance,field:'prenom')}"/>
          password : <input type="password"  name="password" value="${fieldValue(bean:membreInstance,field:'password')}"/>
        </div>
      </fieldset>
      <fieldset class="buttons">	 
        <input type="submit" name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
      </fieldset>
    </auth:form>
  </div>
</body>
</html>
