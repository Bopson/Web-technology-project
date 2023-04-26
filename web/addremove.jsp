<%-- 
    Document   : addremove
    Created on : Jan 4, 2022, 4:01:45 PM
    Author     : Administrator
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="rw.ac.auca.registration.util.DatabaseUtil"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String add = request.getParameter("x");
    

    try {
        Connection con = DatabaseUtil.getConnection();

        //run query
        String query = "INSERT INTO Student VALUES (?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(query);
         String query2 = "SELECT * FROM Course_selection";
        PreparedStatement pst2 = con.prepareStatement(query2);
        ResultSet rs = pst2.executeQuery();
        pst.setString(1, rs.getString("code"));
        pst.setString(2, rs.getString("names"));
        pst.setInt(3, rs.getInt("credits"));
        pst.setInt(4, rs.getInt("course_fee"));
        pst.execute();
        response.sendRedirect("Details.jsp");
    } catch(SQLException e) {
        System.out.println("FAILURE");
        System.out.print(e.getMessage());
    }
%>