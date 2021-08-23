<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "demo_project";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #80c1ff;
  color: white;
}
#customers td{
background-color:#fff;
}
h1 {
color:#0069cc;
text-align:center;
}
</style>
<body style="background-color:#cce6ff">
<h1>Feedback List</h1>
<table border="1" id="customers">
<tr>
<th>Feedback ID</th>
<th>User ID</th>
<th>User Name</th>
<th>Email-ID </th>
<th>Feedback</th>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from feedback";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("f_id") %></td>
<td><%=resultSet.getString("user_id") %></td>
<td><%=resultSet.getString("user_name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("user_feedback") %></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>