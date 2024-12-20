<%-- 
    Document   : delete_tabledata
    Created on : 8 Aug, 2024, 9:38:36 PM
    Author     : SRIJIT
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete page</title>
    </head>
    <body>
        <%
        Connection conn;
                Statement stmt;
                int sid=Integer.parseInt(request.getParameter("id"));
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                String sql_q="delete from stu_table where Sl_No="+sid;
                stmt=conn.createStatement();
                int count=stmt.executeUpdate(sql_q);
                if(count==1){
                    out.println("<script>alert('1 row delete success')</script>");
                }
                else
                {
                    out.println("unsucccess delete");
                }
            } 
            catch(Exception ex){
               out.println("Error Occure From:"+ex.getMessage());
            }
            %>
    </body>
</html>
