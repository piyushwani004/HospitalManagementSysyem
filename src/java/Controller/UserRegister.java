/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Database.DatabaseConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.swing.text.html.HTML.Attribute.ID;

/**
 *
 * @author Admin
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {

    private String user;
    private String pass;
    private int i = 0;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Connection con = DatabaseConnection.initializeDatabase();

            user = request.getParameter("Username");
            pass = request.getParameter("password");
            String repassp = request.getParameter("repassword");
            
            PreparedStatement pst = con.prepareStatement("insert into login values(?,?)");
            pst.setString(1, user);
            pst.setString(2, pass);
            i = pst.executeUpdate();
            if (i > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("userRegister.jsp");
                rd.forward(request, response);
            }

        } catch (Exception e) {

        }

    }

}
