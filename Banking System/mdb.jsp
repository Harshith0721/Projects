<%@ page import="java.sql.*" %>
<%
    String sender = request.getParameter("sender");
    String receiver = request.getParameter("receiver");
    int amount = Integer.parseInt(request.getParameter("amount"));

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    boolean success = false;
    String message = "";

    try {
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/b1", "root", "");

        
        stmt = conn.prepareStatement("SELECT balance FROM accounts WHERE account_number = ?");
        stmt.setString(1, sender);
        rs = stmt.executeQuery();

        if (rs.next()) {
            int senderBalance = rs.getInt("balance");

            if (senderBalance >= amount) {
                
                stmt = conn.prepareStatement("UPDATE accounts SET balance = balance - ? WHERE account_number = ?");
                stmt.setInt(1, amount);
                stmt.setString(2, sender);
                stmt.executeUpdate();

                
                stmt = conn.prepareStatement("UPDATE accounts SET balance = balance + ? WHERE account_number = ?");
                stmt.setInt(1, amount);
                stmt.setString(2, receiver);
                stmt.executeUpdate();

                success = true;
                message = "Transaction successful!";
            } else {
                message = "Insufficient balance!";
            }
        } else {
            message = "Sender account not found!";
        }

    } catch (Exception e) {
        message = "Transaction failed! Try again.";
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>

<script type="text/javascript">
    alert("<%= message %>");
    window.location.href = "money.jsp";
</script>
