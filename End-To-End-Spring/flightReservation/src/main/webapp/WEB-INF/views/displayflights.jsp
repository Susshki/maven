<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Search Results</h1>

<table>
<c:forEach items="${flights}" var="flight">
<tr>
	<td>${flight.id}</td>
	<td>${flight.departureCity}</td>
	<td>${flight.arrivalCity}</td>
	<td>${flight.dateOfDeparture}</td>
	<td>${flight.timeOfDeparture}</td>
	<td><a href="showreservation?id=${flight.id}" >Select</a></td>
</tr>


</c:forEach>
</table>
</body>
</html>