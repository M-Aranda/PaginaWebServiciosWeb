<%-- 
    Document   : comprar
    Created on : Oct 19, 2018, 12:38:23 PM
    Author     : Marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de compras</title>
         <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <h4>Usted puede reservar cualquiera de los productos introduciendo el id del
        producto.</h4>
        <br>
        
        <form action="buscarProducto.do" method="post">
            <input type="number" id="idProducto" name="idProducto" required>
            <input type="submit" value="Buscar">
        </form>
        
        <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
