<%-- 
    Document   : Display
    Created on : Feb 22, 2016, 9:48:19 PM
    Author     : Shamshuddeen
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            String imagee;
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","sa","domnic");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select*from imagestore where id=6");
         while(rs.next()){
             imagee=this.getServletContext().getInitParameter("imglocation")+"/jeans/"+rs.getString("img");
             out.println("<img src='"+imagee+"' style='width:300px;height:300px;'/>");
        
             %>
        
<%
 }
            }
            catch(Exception e){
}
            %>
          
    </body>
</html>
