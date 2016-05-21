<%@ page import="ga.Atleta" %>



<div class="fieldcontain ${hasErrors(bean: atletaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="atleta.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${atletaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atletaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="atleta.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${atletaInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atletaInstance, field: 'data_nascimento', 'error')} required">
	<label for="data_nascimento">
		<g:message code="atleta.data_nascimento.label" default="Datanascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="data_nascimento" required="" value="${atletaInstance?.data_nascimento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atletaInstance, field: 'contrato', 'error')} required">
	<label for="contrato">
		<g:message code="atleta.contrato.label" default="Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contrato" required="" value="${atletaInstance?.contrato}"/>

</div>

