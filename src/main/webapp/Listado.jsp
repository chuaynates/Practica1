<%-- 
    Document   : Listado
    Created on : 08/09/2019, 03:20:08 PM
    Author     : Cristian
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Tienda KOTL</title>
    </head>
    <body>
        <h1 style="text-align: center; color:blue;">LISTA DE ARTÍCULOS</h1>
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
            datos=sen.executeQuery("select * from articulos");
        %>
        <table border="1" style="margin: 0 auto;">
            <tr>
                <td> ID </td>
                <td> DESCRIPCIÓN </td>
                <td> PRECIO </td>
                <td> STOCK </td>
  
            </tr>
            <% while(datos.next()){
            %>
            
            <tr>
                <td><%=datos.getString(1)%></td>
                <td><%=datos.getString(2)%></td>
                <td><%=datos.getString(3)%> soles</td>
                <td><%=datos.getString(4)%> unidades</td>
                
        
                      
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
        <a href="insertaremp.jsp" style="text-align: center">Registrar Empleado</a>
        <br><br><a href="menu.jsp"> Menú</a>
        </div>
    </body>
</html>
