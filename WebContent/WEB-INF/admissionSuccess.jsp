<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Application submitted successfully</h1>
<h2>${msg}</h2>
<table>
<tr>
<td>Student Name</td>
<td>${student1.studentName}</td>
</tr>
<tr>
<td>Student Hobby</td>
<td>${student1.studentHobby}</td>
</tr>
<tr>
<td>Student Mobile</td>
<td>${student1.mobileNumber}</td>
</tr>
<tr>
<td>Student Date of Birth</td>
<td>${student1.dateOfBirth}</td>
</tr>
<tr>
<td>Student Skills</td>
<td>${student1.skills}</td>
</tr>
<tr>
<td>Student Address</td>
<td>State:${student1.address.state}
City:${student1.address.city}
Street:${student1.address.street}
Pin:${student1.address.pincode}
</td>
</tr>
</table>

</body>
</html>