package Pack;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import db.DBConnection;

@WebServlet("/CastVote")
public class CastVote extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int voterId = (Integer) request.getSession().getAttribute("voterId");
        String candidate = request.getParameter("candidate_id");
        String candidate_name = request.getParameter("candidate_name");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement check = con.prepareStatement("SELECT * FROM votes WHERE voter_id = ?");
            check.setInt(1, voterId);
            ResultSet rs = check.executeQuery();

            if (rs.next()) {
                response.sendRedirect("already_voted.jsp");
            } else {
                PreparedStatement ps = con.prepareStatement("INSERT INTO votes(voter_id, candidate_id,candidate_name) VALUES (?, ?,?)");
                ps.setInt(1, voterId);
                ps.setString(2, candidate);
                ps.setString(3, candidate_name);
                int i = ps.executeUpdate();

                if (i > 0) {
                    response.sendRedirect("vote_success.jsp");
                } else {
                    response.sendRedirect("vote.jsp?error=Vote failed.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("vote.jsp?error=Server error.");
        }
    }
}
