<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import="java.sql.*" %>
   <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%=  request.getParameter("id")%>
<%
 		String id = request.getParameter("id");
		String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
		//out.println(1);
		String DB_URL = "jdbc:mysql://localhost:3306/db03";
		String USERNAME = "root";
		String PASSWORD = "1234";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			while(true) {
			Class.forName(JDBC_DRIVER);
 			
			conn = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
			stmt = conn.createStatement();
			
			
			
			String upd = "update table02"+
					" set id='ȫ�浿'" +
					" where id='" + id + "';";
			stmt.executeUpdate(upd);
			stmt.close();
			conn.close();
			break;
			}
		}catch (ClassNotFoundException e) { 
			System.out.println("Class Not Found Exection"); 
			e.printStackTrace(); 

		}catch (SQLException e) {
			System.out.println("SQL Exception : " + e.getMessage()); e.printStackTrace(); 
		}
%>
<h1><%=id %> �����Ǿ����ϴ�</h1>

</body>
</html>