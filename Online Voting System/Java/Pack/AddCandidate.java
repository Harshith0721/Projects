package Pack;

import java.io.*;
import java.nio.file.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/AddCandidate")
@MultipartConfig
public class AddCandidate extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String party = request.getParameter("party");
        String manifesto = request.getParameter("manifesto");

       
        Connection con = null;
        PreparedStatement pst = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "");

            String sql = "INSERT INTO candidates (name, party,  manifesto) VALUES (?, ?, ?, ?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, party);
            pst.setString(3, manifesto);

            int result = pst.executeUpdate();
            if (result > 0)
                response.sendRedirect("add_candidate.jsp?msg=success");
            else
                response.sendRedirect("add_candidate.jsp?msg=fail");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("add_candidate.jsp?msg=error");
        } finally {
            try {
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
