<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="entity.User,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>





<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShowLM</title>
</head>
<body  style="background-image:url('/bfish/images/school.jpg');">

<%@ include file="/title.jsp" %>
<div class="content">
<Script Language="JavaScript"> 
    function a() 
    { 
    document.form1.action="/bfish/userget.do"; 
    document.form1.submit(); 
    } 
     
    function b() 
    { 
    document.form1.action="/bfish/UserShow.do"; 
    document.form1.submit(); 
    } 
    </Script> 
 <br><br>
<form name="form1" action=""> 

&nbsp;&nbsp;&nbsp;&nbsp;
LM_ID:<input type="text" name="user_id" id="user_id">

    <INPUT Type="Button"  Value="Search" onClick="a()"> 

     <INPUT Type="Button"  Value="Reset" onClick="b()"> 
    </form> 









<table 
style="width: 800px; margin: 44px auto"
	class="altrowstable" id="alternatecolor"
	align='center' border='1' cellspacing='0'
	>
	
	<tr>
		<td><font size="6">LM_ID</font></td>
		<td><font size="6">LM_Name</font></td>
		<td></td>
		<td></td>
		<td></td>

	</tr>
	<c:forEach items="${users}" var="user" varStatus="st">
	<c:if test="${user.able==1}">
		<tr>
			<td><font size="6">${user.user_id}</font></td>
			<td><font size="6">${user.name}</font></td>	
			
			<td><a  href="updateone.do?user_id=${user.user_id}">Change</a></td>
			<td><a href="userset.do?user_id=${user.user_id}">Reset</a></td>
			<td><a href="userdelete.do?user_id=${user.user_id}">Delete</a></td>
			
			
		</tr>
	</c:if>
	</c:forEach>
</table>

Add Librarian：
 <br><br>

<form id=form action="/bfish/useradd.do" method="post"  >
	 &nbsp;&nbsp;&nbsp;&nbsp;

	 	LM_ID:<input type="text" name="user_id" id="user_id" >
		LM_Name:<input type="text" name="name" id="name">
		<input type='hidden'   name="password" id="password" value='00010001'>
		<input   type="submit"   value="Add">
	</form>

</div>
<%@ include file="/foot.jsp" %>	

</body>
</html>