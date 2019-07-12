<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,dao.*,entity.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>notice</title>
</head>
<body  style="background-image:url('/bfish/images/school.jpg');">
<%@ include file="/title.jsp" %>
<div class="content">
<% List<Notice> notices = NoticeDao.getNotices(); %>

<%for(Notice notice:notices){ %>
	<%=notice.getName() %>   <%=notice.getNotice_time() %><br/>
	<%=notice.getContent() %><br/>
	<hr/>
<%} %>
</div>
<%@ include file="/foot.jsp" %>
</body>
</html>