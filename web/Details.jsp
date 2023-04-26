<%-- 
    Document   : Details
    Created on : Jan 4, 2022, 3:40:39 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="rw.ac.auca.registration.util.DatabaseUtil"%>
<%@page import="rw.ac.auca.registration.domain.Selection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rw.ac.auca.registration.domain.Student"%>

<%
    List<Student> students = new ArrayList<>();
    try {
        Connection con = DatabaseUtil.getConnection();
        
        //run query
        String query = "SELECT * FROM Student";
        PreparedStatement pst = con.prepareStatement(query);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            Student s = new Student();
            s.setCode(rs.getString("code"));
            s.setNames(rs.getString("names"));
            s.setCredits(rs.getInt("credits"));
            s.setFee(rs.getInt("course_fee"));

            students.add(s);
        }
    } catch (SQLException e) {
        out.print("FAILURE");
        out.print(e.getMessage());
    }
%>
<!DOCTYPE html>
<html>
    <style>
        table,th,td{
            border: 1px solid black;
            border-collapse: collapse;
             padding: 5px;
        }
        th{
           
            background: gray;
        }
     </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-size: 15px;">Details of selected courses</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Names</th>
                <th>Credits</th>
                <th>Course Fee</th>
                <th>Actions</th>
            </tr>
            <%for (Student s: students) {%>
                <tr>
                    <td><%=s.getCode()%></td>
                    <td><%=s.getNames()%></td>
                    <td><%=s.getCredits()%></td>
                    <td><%=s.getFee()%></td>
                    <td>
                        <a href="">add</a>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>