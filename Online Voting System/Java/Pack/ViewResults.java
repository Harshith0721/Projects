package Pack;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import db.DBConnection;

@WebServlet("/ViewResults")
public class ViewResults extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Connection con = DBConnection.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT candidate, COUNT(*) as votes FROM votes GROUP BY candidate");

            Map<String, Integer> results = new LinkedHashMap<>();
            while (rs.next()) {
                results.put(rs.getString("candidate"), rs.getInt("votes"));
            }

            request.setAttribute("results", results);
            request.getRequestDispatcher("view_results.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin_dashboard.jsp?error=Failed to load results.");
        }
    }
}
