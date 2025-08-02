package Pack;

import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;
import java.time.Period;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import db.DBConnection;

@WebServlet("/RegisterVoter")
public class RegisterVoter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String aadhaar = request.getParameter("aadhaar");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");

        try {
            // Validate age
            LocalDate birthDate = LocalDate.parse(dob);
            int age = Period.between(birthDate, LocalDate.now()).getYears();
            if (age < 18) {
                response.sendRedirect("voter_register.jsp?error=You must be 18+ to register.");
                return;
            }

            Connection con = DBConnection.getConnection();
            PreparedStatement check = con.prepareStatement("SELECT * FROM voters WHERE aadhaar = ?");
            check.setString(1, aadhaar);
            ResultSet rs = check.executeQuery();

            if (rs.next()) {
                response.sendRedirect("voter_register.jsp?error=Aadhaar already registered.");
            } else {
                PreparedStatement ps = con.prepareStatement("INSERT INTO voters(name, email, aadhaar, dob, password) VALUES (?, ?, ?, ?, ?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, aadhaar);
                ps.setString(4, dob);
                ps.setString(5, password);

                int i = ps.executeUpdate();
                if (i > 0) {
                    response.sendRedirect("voter_login.jsp?msg=Registration successful.");
                } else {
                    response.sendRedirect("voter_register.jsp?error=Failed to register.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("voter_register.jsp?error=Server error.");
        }
    }
}
