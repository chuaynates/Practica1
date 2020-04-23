<%-- 
    Document   : login
    Created on : 08/09/2019, 09:16:53 PM
    Author     : Cristian
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color:blueviolet;">LOGIN</h1>
        <form action="" method="post"> <table style="margin: 0 auto;">
            <tr>
                <td>Usuario :</td>
                <td><Input type="text" name="txtusu"></td>
            </tr>
            <tr>
                <td>Contraseña :</td>
                <td><Input type="password" name="txtcon"></td>
            </tr>
            <tr>
                <td><Input type="submit" value="Ingresar"></td>
                <td><Input type="reset" value="Cancelar"></td>
            </tr>
            </table></form>
        <% String driver="com.mysql.jdbc.Driver";
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
             String usu=request.getParameter("txtusu");
             String contra=request.getParameter("txtcon");
             datos=sen.executeQuery("select * from empleado where login ='"+usu+"'and clave='"+contra+"'");
              if(datos.absolute(1)){
                 response.sendRedirect("http://localhost:8084/lb4-ch/menu.jsp");
              }
              else{
              out.println("Este usuario no existe");
              }
             
                  %>
                    
            
        
    </body>
</html>
