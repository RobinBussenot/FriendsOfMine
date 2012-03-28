<%@ page import="fom.Membre" %>



<div class="fieldcontain ${hasErrors(bean: membreInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="membre.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${membreInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: membreInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="membre.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${membreInstance?.prenom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: membreInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="membre.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${membreInstance?.email}"/>
</div>

