<%-- 
    Document   : insertaremp
    Created on : 08/09/2019, 08:17:43 PM
    Author     : Cristian
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda KOTL</title>
    </head>
    <body>
    
        <h1 style="text-align: center; color:blue">Registo de Empleados</h1>
        <%
           try{ 
            String driver="com.mysql.jdbc.Driver";
            String cadena="jdbc:mysql://localhost/lab4sn?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String usuario="root";
            String clave="";
            Class.forName(driver);
            Connection con;
            Statement sen;
            con=DriverManager.getConnection(cadena,usuario,clave);
            
        %>
        <form acion="empleados.jsp" method="post" style="text-align:center;">
            <table border="1" style="margin: 0 auto;" >
                <tr>
                <td>Artículo  :</td> 
                <td><input type="text" name="ape"  ></td>
                
                </tr>
               
                <tr>
                <td>Precio  :</td> 
                <td><input type="text" name="txtnombre"  ></td>
                
                </tr>
            <tr>
                <td>Stock :</td> 
                <td><input type="text" name="sexo"></td>
            </tr>
             <tr>
                    <td><input type="submit" value="Registrar"></td>
                    <td><input type="reset" value="Limpiar"></td>
                </tr>
            </table>
            <br> <a href="Listado.jsp">Mostrar artículos</a> <br><br><a href="menu.jsp"> Menú</a>
        </form>
        <% if(con!=null){
            
            String ape=request.getParameter("ape");
            String nom=request.getParameter("txtnombre");
            String sex=request.getParameter("sexo");
          
            String sql="insert into articulos values(NULL,'"+ape+"','"+nom+"','"+sex+"')";
            sen=con.createStatement();
            sen.executeUpdate(sql);} else{
            out.println("no existe conexion");
            
        }}
catch(Exception e){ 
out.println(e);
              
}
       
            
            %>
    </body>
</html>
