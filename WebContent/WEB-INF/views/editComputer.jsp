<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="label.title"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->

<link href="<%=request.getContextPath()%>/static/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/static/css/font-awesome.css"
	rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/static/css/main.css"
	rel="stylesheet" media="screen">	
</head>
<body>
	<header class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/dashboard"><spring:message code="label.header"/></a>
		</div>
		<div class="container">
			<a href="?lang=fr">fr</a> <a href="?lang=en">en</a>
		</div>
	</header>
	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-xs-8 col-xs-offset-2 box">
					<div class="label label-default pull-right">id:
						${editComputerForm.id}</div>
					<h1><spring:message code="label.edit.subtitle"/></h1>


			<form:form id="formEdit" action="editComputer" method="POST"
						modelAttribute="editComputerForm">
						<fieldset>
						<form:input path="id" type="hidden" value="${editComputerForm.id}" id="id" />
							<div class="form-group">
								<form:label path="name" for="computerName"><spring:message code="label.name"/></form:label>
								<form:input path="name" name="computerName" type="text"
									class="form-control" id="computerName"
									placeholder ="${editComputerForm.name}" value="${editComputerForm.name}" data-validation="alphanumeric" data-validation-ignore=" ,&,.,-,/,+,:" />
							</div>
							<div class="form-group">
								<form:label path="introduced" for="introduced"><spring:message code="label.introduced"/></form:label>
								<form:input path="introduced" type="date" class="form-control"
									name="introduced" id="introduced" value="${editComputerForm.introduced}" data-validation="date"/>
							</div>
							<div class="form-group">
								<form:label path="discontinued" for="discontinued"><spring:message code="label.discontinued"/></form:label>
								<form:input path="discontinued" type="date" class="form-control"
									name="discontinued" id="discontinued"
									value="${editComputerForm.discontinued}" data-validation="date" />
							</div>
							<div class="form-group">
								<form:label path="company" for="companyId"><spring:message code="label.company"/></form:label>
								<form:select path="company" class="form-control" id="companyId"
									name="companyId"  >
									<form:option value="${computerDtoId}" label="${editComputerForm.company}"/>
									<form:option value="-1" label="-- Select a company -- "/>
									<form:options items="${listeCompany}" />
									</form:select>
							</div>
						</fieldset>
						<div class="actions pull-right">
							<input id="btnSubmit" type="submit" value="<spring:message code="label.btn.submit"/>"
								class="btn btn-primary"><spring:message code="label.btn.between"/><a
								href="<%=request.getContextPath()%>/dashboard"
								class="btn btn-default"><spring:message code="label.btn.cancel"/></a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</section>
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.79/jquery.form-validator.min.js"></script>
	<script
src="<%=request.getContextPath()%>/static/js/editFormValidator.js"></script>
</body>
</html>