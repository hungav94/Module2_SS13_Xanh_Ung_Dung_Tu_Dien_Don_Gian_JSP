<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: An Viet Hung
  Date: 9/19/2019
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!Map<String, String> dic = new HashMap<>(); %>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");

    String result = dic.get(search);

    if (result != null) {
        out.print("Word: " + search + "<br>");
        out.print("Result: " + result);
    } else {
        out.print("Not found");
    }
%>
</body>
</html>
