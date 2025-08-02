package Pack;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import db.DBConnection;

@WebServlet("/LoginVoter")
public class LoginVoter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aadhaar = request.getParameter("aadhaar");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM voters WHERE aadhaar = ? AND password = ?");
            ps.setString(1, aadhaar);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("voterId", rs.getInt("id"));
                session.setAttribute("voterName", rs.getString("name"));
                response.sendRedirect("vote.jsp");
            } else {
                response.sendRedirect("voter_login.jsp?error=Invalid credentials.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("voter_login.jsp?error=Server error.");
        }
    }
}
