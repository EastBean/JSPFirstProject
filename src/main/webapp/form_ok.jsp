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
    String number = request.getParameter("number");
    String booknumber = request.getParameter("booknumber");
    String title = request.getParameter("title");
    String pagenumber = request.getParameter("pagenumber");
    String price = request.getParameter("price");
    String rating = request.getParameter("rating");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    String year = request.getParameter("year");
    String comment = request.getParameter("comment");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    form_ok.jsp 페이지입니다.<br><br>
    책 번호는 <%= number%> 입니다.<br>
    책의 도서 분류 번호는 <%= booknumber%> 입니다.<br>
    책의 도서명은 <%= title%> 입니다.<br>
    책 페이지 수는 <%= pagenumber%> 입니다.<br>
    책의 가격은 <%= price%> 입니다.<br>
    책의 평점은 <%= rating%>점 입니다.<br>
    책의 저자는 <%= author%> 입니다.<br>
    책의 출판사는 <%= publisher%> 입니다.<br>
    책의 출판년도는 <%= year%> 입니다.<br>
    책의 한줄 평 : <%= comment%>
</body>
</html>
