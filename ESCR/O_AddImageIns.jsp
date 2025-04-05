<title>Insert Data</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>

<%
    String user = (String) application.getAttribute("oname");
    ArrayList list = new ArrayList();
    ServletContext context = getServletContext();
    String dirName = context.getRealPath("Gallery\\");
    String paramname = null;
    String file = null;
    String image = null;
    String title = null, tag = null, uses = null;
    String des = null;
    int rank = 0;
    FileInputStream fs = null;
    File file1 = null;
    
    // Load banned words from file
    List<String> bannedWords = Arrays.asList("abuse", "violent", "explicit", "inappropriate", "adult", "nsfw", "offensive");

    try {
        MultipartRequest multi = new MultipartRequest(request, dirName, 10 * 1024 * 1024); // 10MB
        Enumeration params = multi.getParameterNames();
        while (params.hasMoreElements()) {
            paramname = (String) params.nextElement();
            if (paramname.equalsIgnoreCase("title")) {
                title = multi.getParameter(paramname);
            }
            if (paramname.equalsIgnoreCase("tag")) {
                tag = multi.getParameter(paramname);
            }
            if (paramname.equalsIgnoreCase("des")) {
                des = multi.getParameter(paramname);
            }
            if (paramname.equalsIgnoreCase("uses")) {
                uses = multi.getParameter(paramname);
            }
        }
        
        // **Text Filtering**
        for (String word : bannedWords) {
            if (title.toLowerCase().contains(word) || tag.toLowerCase().contains(word) || des.toLowerCase().contains(word)) {
                out.println("Error: Your input contains prohibited words.");
                return;
            }
        }
        
        Enumeration files = multi.getFileNames();
        while (files.hasMoreElements()) {
            paramname = (String) files.nextElement();
            if (paramname != null) {
                image = multi.getFilesystemName(paramname);
                
                // **Image Filtering**
                List<String> restrictedImageNames = Arrays.asList("explicit", "adult", "nsfw");
                String lowerCaseImage = image.toLowerCase();
                if (restrictedImageNames.stream().anyMatch(lowerCaseImage::contains) || !(image.endsWith(".jpg") || image.endsWith(".png"))) {
                    out.println("Error: Uploaded image is not allowed.");
                    return;
                }
                
                String fPath = context.getRealPath("Gallery/" + image);
                file1 = new File(fPath);
                fs = new FileInputStream(file1);
                list.add(fs);
            }
        }
        
        String encrypteddDesc = new String(Base64.encode(des.getBytes()));
        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
        Date now = new Date();
        String dt = sdfDate.format(now) + " " + sdfTime.format(now);
        
        // **Generate RSA Key Pair**
        KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
	    Cipher encoder = Cipher.getInstance("RSA");
		KeyPair kp = kg.generateKeyPair();
		Key pubKey = kp.getPublic();
		byte[] pub = pubKey.getEncoded();
		String pk = String.valueOf(pub);
        
        String sql3 = "select * from images where title='" + title + "' ";
        Statement st3 = connection.createStatement();
        ResultSet rs3 = st3.executeQuery(sql3);
        if (rs3.next()) { 
            out.println("<b> Image Already Exists</b>");
            out.println("<p align='center'><a href='O_AddImage.jsp' class='style47'>Back</a></p>");
        } else {
            PreparedStatement ps = connection.prepareStatement("insert into images(owner,title,tag,description,uses,dt,image,rank,sk) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, user);
            ps.setString(2, title);
            ps.setString(3, tag);
            ps.setString(4, encrypteddDesc);
            ps.setString(5, uses);
            ps.setString(6, dt);
            ps.setBinaryStream(7, fs, (int) (file1.length()));    
            ps.setInt(8, rank);
            ps.setString(9, pk); // Store the generated key
            int x = ps.executeUpdate();
            if (x > 0) {
                out.println("Image added Successfully");
                out.println("<p align='left'><a href='O_AddImage.jsp' class='style16'>Upload Another Image</a></p>");
                out.println("<p align='left'><a href='O_Main.jsp' class='style16'>Go to Home</a></p>");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%> 
