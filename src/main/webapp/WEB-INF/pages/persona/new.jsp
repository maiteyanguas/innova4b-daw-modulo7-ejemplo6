<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/styles.css">
<title><spring:message code="persona.nueva" text="Persona nueva"/></title>
</head>
<body>
	<h2><spring:message code="persona.nueva" text="Persona nueva"/>:</h2>
	<form:form method="POST" modelAttribute="persona" action="/ejemploSpringMVC/persona/add">
	<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td><form:label path="nombre"><spring:message code="datos.persona.nombre" text="Nombre"/>:</form:label></td>
				<td><form:input path="nombre"/></td>
				<td><form:errors path="nombre" cssClass="error" /></td>				
			</tr>
			<tr>
				<td><form:label path="apellido"><spring:message code="datos.persona.apellido" text="Apellido"/>:</form:label></td>
				<td><form:input path="apellido"/></td>
				<td><form:errors path="apellido" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="fechaNacimiento"><spring:message code="datos.persona.fechaNacimiento" text="Fecha de nacimiento"/> (dd/mm/yyyy):</form:label></td>
				<td><form:input path="fechaNacimiento"/></td>
				<td><form:errors path="fechaNacimiento" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Enviar"/> <a href="/ejemploSpringMVC/persona/list">Cancelar</a></td>
			</tr>
		</table>
	</form:form>
</body>
</html>