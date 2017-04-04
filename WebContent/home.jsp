<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
</head>
<body>
<%String user=(request.getAttribute("loggedInUser")).toString(); %>
  <%
    if (user != "null") {
  %>
     Name: <%= request.getAttribute("name") %><br/>
     Address: <%= request.getAttribute("streetName") %>, 
     <%= request.getAttribute("city") %>, <%= request.getAttribute("pin") %>, 
     <%= request.getAttribute("country") %><br />
  <%
    } else {
  %>
      User does not exist.
  <%
    }
  %>

</body>
</html>