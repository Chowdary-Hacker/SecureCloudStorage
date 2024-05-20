<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
int idd = 1;
int blocknumber = 0;

try {
    Statement stssss = connection.createStatement();
    
    ResultSet pr = stssss.executeQuery("SELECT id FROM blocks ORDER BY id DESC LIMIT 1");
    if (pr.next()) {
        blocknumber = pr.getInt("id");
    }
    
    ResultSet prr = stssss.executeQuery("SELECT idd FROM idd");
    if (prr.next()) {
        idd = prr.getInt("idd");
    }

    ResultSet rss = stssss.executeQuery("SELECT upload_time, uname FROM datasets WHERE id='" + idd + "'");
    if (rss.next()) {
        String uploadtime = rss.getString("upload_time");
        String unamee = rss.getString("uname");

        ResultSet rslt = stssss.executeQuery("SELECT * FROM datasets WHERE upload_time='" + uploadtime + "' AND uname='" + unamee + "'");
        
        StringBuilder result = new StringBuilder();
        while (rslt.next()) {
            ResultSetMetaData metaData = rslt.getMetaData();
            int columns = metaData.getColumnCount();

            for (int i = 1; i <= columns; i++) {
                result.append(rslt.getString(i));
                result.append("\n");
            }
            result.append("\n");
        }

        String data = result.toString();

        String filenamee = "filenamee.txt";
        try (PrintStream pp = new PrintStream(new FileOutputStream(filenamee))) {
            pp.print(new String(data));
        }

        MessageDigest mdd = MessageDigest.getInstance("SHA-512");
        try (FileInputStream fis111 = new FileInputStream(filenamee);
             DigestInputStream dis11 = new DigestInputStream(fis111, mdd);
             BufferedInputStream bis11 = new BufferedInputStream(dis11)) {
            while (true) {
                int b1 = bis11.read();
                if (b1 == -1)
                    break;
            }
        } finally {
            if (bis11 != null) {
                bis11.close();
            }
            if (dis11 != null) {
                dis11.close();
            }
            if (fis111 != null) {
                fis111.close();
            }
        }

        BigInteger bi11 = new BigInteger(mdd.digest());
        String h11 = bi11.toString(16);

        String pre = "0";
        if (blocknumber != 0) {
            ResultSet smp = stssss.executeQuery("SELECT * FROM blocks WHERE id='" + blocknumber + "'");
            StringBuilder resultt = new StringBuilder();
            while (smp.next()) {
                ResultSetMetaData metaData = smp.getMetaData();
                int columns = metaData.getColumnCount();

                for (int i = 1; i <= columns; i++) {
                    resultt.append(smp.getString(i));
                    resultt.append("\n");
                }
                resultt.append("\n");
            }
            String predata = resultt.toString();

            String filenameee = "filenameee.txt";
            try (PrintStream ppp = new PrintStream(new FileOutputStream(filenameee))) {
                ppp.print(new String(predata));
            }

            MessageDigest mddd = MessageDigest.getInstance("SHA-512");
            try (FileInputStream fis1111 = new FileInputStream(filenameee);
                 DigestInputStream dis111 = new DigestInputStream(fis1111, mddd);
                 BufferedInputStream bis111 = new BufferedInputStream(dis111)) {
                while (true) {
                    int b1 = bis111.read();
                    if (b1 == -1)
                        break;
                }
            } finally {
                if (bis111 != null) {
                    bis111.close();
                }
                if (dis111 != null) {
                    dis111.close();
                }
                if (fis1111 != null) {
                    fis1111.close();
                }
            }

            BigInteger bi111 = new BigInteger(mddd.digest());
            pre = bi111.toString(16);
        }

        stssss.executeUpdate("INSERT INTO blocks(previous_block_hash, time_of_creation, data_owner, data_hash) VALUES('" + pre + "','" + uploadtime + "','" + unamee + "', '" + h11 + "')");
        
        stssss.executeUpdate("UPDATE idd SET idd = '" + idd + "'");
    }
    
    response.sendRedirect("DO_Upload_Datasets1.jsp");
} catch ( IOException e) {
    e.printStackTrace();
}
%>
