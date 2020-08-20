/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Database.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet("/AdminRegister")
public class AdminRegister extends HttpServlet {

    private int i = 0;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pw = response.getWriter();
        try {
            String userp = request.getParameter("email");
            String passp = request.getParameter("pass");
            String rpassp = request.getParameter("re_pass");
            String tikbox = request.getParameter("agree-term");

            Connection con = DatabaseConnection.initializeDatabase();
            PreparedStatement pst = con.prepareStatement("insert into adminreg values(?,?)");
            pst.setString(1, userp);
            pst.setString(2, passp);
            i = pst.executeUpdate();
            if (i > 0) {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Registerd Successfully..!');");
                pw.println("window.location.href = \"adminLogin.jsp\";");
                pw.println("</script>");
                //RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
                //rd.forward(request, response);
            } else {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Username or Password is Incorrect..!');");
                pw.println("window.location.href = \"adminRegister.jsp\";");
                pw.println("</script>");
                //RequestDispatcher rd = request.getRequestDispatcher("adminRegister.jsp");
                //rd.forward(request, response);
            }

        } catch (Exception e) {

        }

    }

}
