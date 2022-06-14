<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body >
<center>
<h1>Amazon Book Store</h1><br>
<hr>
<a href="http://localhost:8080/exno8/Booklist.html"> Click here to View All Books</a><br><br><br>
<FORM ACTION="http://localhost:8080/exno8/Bookcheck.jsp"method="get" >
Enter the Book title to search <input type="text" name ="bname" value="">
<button type="submit">Search</button>
</form>
</center>
</body>
</html>
