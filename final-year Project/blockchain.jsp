<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import ="java.security.Key" %>
<%@ page import="java.sql.*"%>
<%@ include file="DO_Authentication.jsp" %>
<%@ page import ="javax.crypto.Cipher" %> 

<%@ page import ="java.math.BigInteger" %>

<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
<%! 
//String namee=(String)application.getAttribute("doname");	 

public class Block {
    private String previousHash;
    private Date timestamp;
    private String dataHash;
    public Block(String previousHash, Date timestamp, String dataHash) {
        this.previousHash = previousHash;
        this.timestamp = timestamp;
        this.dataHash = dataHash;
    }

    public String getPreviousHash() {
        return previousHash;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public String getDataHash() {
        return dataHash;
    }
}


    List<Block> blockchain = new ArrayList<Block>();
    String previousHash = "0"; 

    // Function to calculate hash using SHA-256
    String calculateHash(String data) {
        try {
                    MessageDigest digest = MessageDigest.getInstance("SHA-256");
                    byte[] hash = digest.digest(data.getBytes("UTF-8"));
                    StringBuilder hexString = new StringBuilder();
                    for (byte b : hash) {
                        String hex = Integer.toHexString(0xff & b);
                        if (hex.length() == 1) {
                            hexString.append('0');
                        }
                        hexString.append(hex);
                    }
                    return hexString.toString();
            
        } catch (Exception e) {
            e.printStackTrace();
            return "78&*&";
        }
    }

    // Function to add a new block to the blockchain
    void addBlock(String data) {
        Date timestamp = new Date();
        String dataHash = calculateHash(data);
        blockchain.add(new Block(previousHash, timestamp, dataHash));
        previousHash = dataHash; // Set current data hash as previous hash for next block
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Blockchain</title>
    <style>
        .block {
            border: 1px solid black;
            padding: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Blockchain</h1>
   <%
    try {
        String sql = "SELECT * FROM datasets WHERE uname='Mohan Sai'";
        PreparedStatement pstmtmoh = connection.prepareStatement(sql);
        ResultSet rs = pstmtmoh.executeQuery();
        
        StringBuilder dataBuilder = new StringBuilder();
        while (rs.next()) {
            dataBuilder.append(rs.getString("Text_Desc"));
        }
        String data = dataBuilder.toString();
        addBlock(data);
    } catch (Exception e) {
        e.printStackTrace();
    } 
    %>
    <%
        // Display blocks
        for (Block block : blockchain) {
    %>
        <div class="block">
            <p><strong>Previous Block Hash:</strong> <%= block.getPreviousHash() %></p>
            <p><strong>Time:</strong> <%= block.getTimestamp() %></p>
            <p><strong>Data Hash:</strong> <%= block.getDataHash() %></p>
        </div>
    <%
        }
    %>
</body>
</html>
