<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
String name=request.getParameter("r1");
String addr=request.getParameter("r2");
String phno=request.getParameter("r3");
String id=request.getParameter("r4");
String pwd=request.getParameter("r5");
int no=Integer.parseInt(phno);
Connection c;
Statement st;
c=DriverManager.getConnection("jdbc:derby://localhost:1527/employee");
st=c.createStatement();
ResultSet rs=st.executeQuery("select *from useracoount");
while(rs.next())
{
if(name.equals(rs.getString(1)) && addr.equals(rs.getString(2)) && phno.equals(rs.getString(3))&& id.equals(rs.getString(4))&& pwd.equals(rs.getString(5)))
{
out.println("welcome "+rs.getString(1)+" from "+rs.getString(2)+" with Phnone number "+rs.getString(3)+" Has userId "+rs.getString(4));
}
}
%>
</body>
</html>
