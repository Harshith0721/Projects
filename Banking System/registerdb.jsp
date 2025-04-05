<%@ page import="java.sql.*, java.security.MessageDigest" %>
<%
    String url = "jdbc:mysql://localhost:3306/b1";
    String dbUser = "root";
    String dbPassword = "";

    String account_number = request.getParameter("account_number");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement stmt = null;
    int rowsInserted = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, dbUser, dbPassword);

        
        String sq = "SELECT account_number FROM accounts WHERE account_number=?";
        PreparedStatement ps = conn.prepareStatement(sq);
        ps.setString(1, account_number);
        ResultSet r = ps.executeQuery();
        if(r.next()==true){
        String sql = "INSERT INTO users VALUES (?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, account_number);
        stmt.setString(2, email);
        stmt.setString(3, password);


        rowsInserted = stmt.executeUpdate();
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>

<script type="text/javascript">
function validate() {
    var rowsInserted = <%= rowsInserted %>;
    
    if (rowsInserted > 0) {
        alert("Registration successful! Please login.");
        window.location.href = "login.jsp";
    } else {
            alert("Account Not Found Contact Bank");
        window.location.href = "contact.jsp";
    }
}

validate();
</script>
