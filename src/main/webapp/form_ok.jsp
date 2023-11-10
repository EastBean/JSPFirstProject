<%--
  Created by IntelliJ IDEA.
  User: dbchoi
  Date: 11/7/23
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    form_ok.jsp 페이지입니다.
사용자 이름은 <%= username%> 입니다.
</body>
</html>
