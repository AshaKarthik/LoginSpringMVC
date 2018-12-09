<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>STUDENT ADMISSION FORM FOR ENGINEERING COURSES</h1>
<h3>${msg}</h3>
<form:errors path="student1.*"/>
<form action="/LoginSpringMVCApp/submitAdmissionForm.html" method="post">
<table>
<tr>
<td>Name:</td><td><input type="text" name="studentName"/></td>
</tr>
<tr>
<td>Hobby:</td><td><input type="text" name="studentHobby"/></td>
</tr>
<tr>
<td>Mobile Number:</td><td><input type="text" name="mobileNumber"/></td>
</tr>
<tr>
<td>Date of Birth:</td><td><input type="text" name="dateOfBirth"/></td>
</tr>
<tr>
<td>Skills:</td><td><select name="skills" multiple>
<option value="Java Core">Java Core</option>
<option value="Spring Core">Spring Core</option>
<option value="Spring MVC">Spring MVC</option>
</select></td>
</tr>


</table>
<table>
<tr><td>Student Address</td></tr>
<tr>
<td>State:<input type="text" name="address.state"></td>
<td>City:<input type="text" name="address.city"></td>
<td>Street:<input type="text" name="address.street"></td>
<td>Pin:<input type="text" name="address.pincode"></td>
</tr>
<tr>
<td><input type="submit" value="click here to submit the form"/></td>
</tr>
</table>
</form>
</body>
</html>