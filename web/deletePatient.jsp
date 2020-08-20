<%-- 
    Document   : deletePatient
    Created on : 19 Aug, 2020, 5:52:13 PM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Patient</title>
    </head>
    <body>
        <%
            String mob = request.getParameter("mob");
            Connection con = null;
            Statement stmt = null;
            con = DatabaseConnection.initializeDatabase();
            stmt = (Statement) con.createStatement();
            String query = "delete from  patient " + "where mobile = '"+mob+"'";
            stmt.executeUpdate(query);
            con.close();
            RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
