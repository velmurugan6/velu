<%@ page import="java.io.*,java.util.*"  %>
<html>
<body>
<%
// New location to be redirected
String site = new String("https://accounts.google.com/o/oauth2/auth?scope=email%20profile&state=%2Fprofile&"
+"redirect_uri=http://localhost:8888/oauth2callback&"+
"response_type=code&"+
"client_id=59844789152-30um53br0dp2fk3q3nk6g7re38bddnfr.apps.googleusercontent.com");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>
</body></html>