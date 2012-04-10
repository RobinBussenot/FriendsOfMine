
<%@ page import="fom.Membre" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'membre.label', default: 'Membre')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-membre" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-membre" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'membre.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="login" title="${message(code: 'membre.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'membre.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'membre.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="prenom" title="${message(code: 'membre.prenom.label', default: 'Prenom')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${membreInstanceList}" status="i" var="membreInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${membreInstance.id}">${fieldValue(bean: membreInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: membreInstance, field: "login")}</td>
					
						<td>${fieldValue(bean: membreInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: membreInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: membreInstance, field: "prenom")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${membreInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
