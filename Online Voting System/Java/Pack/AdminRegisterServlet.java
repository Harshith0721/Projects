package Pack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/AdminRegisterServlet")
public class AdminRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/b1", "root", "");

            PreparedStatement pst = con.prepareStatement(
                "INSERT INTO admin (username, password) VALUES (?, ?)"
            );
            pst.setString(1, username);
            pst.setString(2, password);  // (You can hash this later)

            int row = pst.executeUpdate();

            if (row > 0) {
                response.sendRedirect("admin_login.jsp?msg=registered");
            } else {
                response.sendRedirect("admin_register.jsp?msg=failed");
            }

            pst.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin_register.jsp?msg=error");
        }
    }
}
