<%-- 
    Document   : resul
    Created on : 08/09/2019, 08:56:09 PM
    Author     : Cristian
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
     
        <h1 style="text-align: center; color:blue;">Resultados</h1>
         <%
            String driver="com.mysql.jdbc.Driver";
            String cadena="jdbc:mysql://localhost/lab4sn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String usuario="root";
            String clave="";
            Class.forName(driver);
            Connection con;
            Statement sen;
            ResultSet datos;
            con=DriverManager.getConnection(cadena,usuario,clave);
            out.println("");
            sen=con.createStatement();
            String OCU=request.getParameter("txtocu");
            datos=sen.executeQuery("select * from articulos where descripcion='"+OCU+"'");
        %>
        <table border="1" style="margin: 0 auto;">
            <tr>
                <td> APELLIDO </td>
                <td> NOMBRE</td>
                <td> SEXO </td>
                <td> OCUPACIÓN</td>
                
            </tr>
            <% while(datos.next()){
            %>
            
            <tr>
                <td><%=datos.getString(1)%></td>
                <td><%=datos.getString(2)%></td>
                <td>"<%=datos.getString(3)%>"</td>
                <td><%=datos.getString(4)%></td>
               
         
                
                      
            </tr>
            <%}
            datos.close();
            sen.close();
            con.close();
            %>
        </table>
        <br>
        <br>
        <br>
        <div>
        <a href="menu.jsp" style="text-align: center"><-----MENU</a>
        </div>
    </body>
</html>
