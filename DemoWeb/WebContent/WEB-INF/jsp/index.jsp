<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title> 
</head>
<body>
	<div>


		<h1>Employee Directory</h1>



		<form:form modelAttribute="employee" action="save.html" method="post">
			<div>
				<label for="fname">First Name</label>
				<div>
					<form:input path="firstName" id="fname" required="true" placeholder="First Name" />
				</div>
			</div>
			<div>
				<label for="lname">Last Name</label>
				<div>
					<form:input path="lastName" id="lname" required="true" placeholder="Last Name" />
				</div>
			</div>
			<div>
				<label for="desig">Designation</label>
				<div>
					<form:select path="designation" required="true">
						<form:option value="">Please Select Designation</form:option>
						<form:options items="${designations}" />
					</form:select>
				</div>
			</div>
			<div>
				<label for="salary">Salary</label>
				<div>
					<form:input path="salary" id="salary" required="true" placeholder="Salary" />
				</div>
			</div>
			<div>
				<div>
					<button type="submit">Add</button>
				</div>
			</div>
		</form:form>
		<!-- alert logic -->
		<c:if test="${param.message ne null}">
			<div>
				${param.message}
			</div>
		</c:if>
		
		<h3>Current List of Employees:</h3>
		<c:if test="${empList ne null}">
			<table>
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Designation</th>
					<th>Salary</th>
				</tr>
				<c:forEach items="${empList}" var="employee">
					<tr>
						<th>${employee.employeeId}</th>
						<th>${employee.firstName}</th>
						<th>${employee.lastName}</th>
						<th>${employee.designation}</th>
						<th>${employee.salary}</th>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>