<%-- 
    Document   : busqueda
    Created on : 08/09/2019, 08:53:00 PM
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda KOTL</title>
    </head>
    <body>
        <h1 style="text-align: center; color: blue;">Búsqueda de Articulos</h1>
        <form action="resul.jsp">
            <table style="margin: 0 auto;">
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="txtocu" value=""></td>
                    <td><input type="submit"  value="Buscar"></td>
                </tr>
            </table>
            <br><br><a href="menu.jsp"><-----------Menú</a>
        </form>
    </body>
</html>
