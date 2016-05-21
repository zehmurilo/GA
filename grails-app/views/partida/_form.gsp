<%@ page import="ga.Partida" %>



<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="partida.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numero" required="" value="${partidaInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'placar', 'error')} required">
	<label for="placar">
		<g:message code="partida.placar.label" default="Placar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placar" required="" value="${partidaInstance?.placar}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="partida.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${partidaInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'njogcampo', 'error')} required">
	<label for="njogcampo">
		<g:message code="partida.njogcampo.label" default="Njogcampo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="njogcampo" required="" value="${partidaInstance?.njogcampo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'njogreserva', 'error')} required">
	<label for="njogreserva">
		<g:message code="partida.njogreserva.label" default="Njogreserva" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="njogreserva" required="" value="${partidaInstance?.njogreserva}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'lastAdminModification', 'error')} required">
	<label for="lastAdminModification">
		<g:message code="partida.lastAdminModification.label" default="Last Admin Modification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastAdminModification" required="" value="${partidaInstance?.lastAdminModification}"/>

</div>

