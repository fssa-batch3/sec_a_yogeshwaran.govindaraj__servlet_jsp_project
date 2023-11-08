<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.fssa.blood.model.Request"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* Style the table */
.table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

/* Style the table headings */
.table th {
	background-color: #f2f2f2;
	text-align: left;
	padding: 10px;
	border: 1px solid #ddd;
}

/* Style the table rows */
.table td {
	text-align: left;
	padding: 10px;
	border: 1px solid #ddd;
}

/* Add alternating row colors for better readability */
.table tbody tr:nth-child(even) {
	background-color: #f5f5f5;
}

/* Hover effect on table rows */
.table tbody tr:hover {
	background-color: #e0e0e0;
}
</style>
</head>
<body>

	<%-- Retrieve the list of requests from the request attribute --%>
	<%
	List<Request> list = (List<Request>) request.getAttribute("User_LIST");

	System.out.print("in jsp in 49 " + list.get(0).toString());
	%>

	 <a href = " <%=request.getContextPath()%>/pages/Seeker Index.jsp"><h1>User Booking List</h1></a>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Bloodgroup</th>
				<th>Date</th>
				<th>Number</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Request account : list) {
			%>
			<tr>
				<td><%=account.getname() %></td>
				<td><%=account.getdescription() %></td>
				<td><%=account.getgroup() %></td>
				<td><%=account.getdate() %></td>
				<td><%=account.getnumber() %></td>
				<td><%=account.getemail() %></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
</body>
</html>
