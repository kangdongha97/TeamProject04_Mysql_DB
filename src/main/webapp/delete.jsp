<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	  <%
 
 	     // �ѱ� ó�� 
	     request.setCharacterEncoding("UTF-8");
	     // �����͸� ���޹޾Ƽ� ó�� (�Ķ����)
	     String id = request.getParameter("id");
	     
	 	final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/db03";
		final String DBID = "root";
		final String DBPW = "1234";
	     
	     // 1 ����̹� �ε�
	     Class.forName(DRIVER);
	     //System.out.println(" ����̹� �ε� ����! ");
	     // 2 ��񿬰�
	     Connection con =
	           DriverManager.getConnection(DBURL, DBID, DBPW);
	     //System.out.println(" ��� ���� ����! ");
	     // 3 sql �ۼ� & pstmt ��ü����
	     String sql 
	     ="delete from table02 where id=?";
	     
	     PreparedStatement pstmt = con.prepareStatement(sql);
	     pstmt.setString(1, id);
	     int result = pstmt.executeUpdate();
	     System.out.println(result);
	     System.out.println(id);
	     
	     // 4 sql ����
	     pstmt.executeUpdate();
	     
	  
	  %>
	  <h1><%=id %> �����Ǿ����ϴ�</h1>
</body>
</html>