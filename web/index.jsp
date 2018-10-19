

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Indice</title>
        
        <link rel="stylesheet" href="style.css" type="text/css">
        
    </head>
    <body>
        <h1>Bienvenido al sitio de reserva</h1>
        <br>
        <h3>Estos son los productos disponibles</h3>
        
        <%
            Producto lapicera=new Producto(1,"Lapiz",200,500);
            Producto cuaderno=new Producto(2,"Cuaderno",1000,1000);
            Producto corrector=new Producto(3,"Corrector",500,400);
            Producto goma=new Producto(4,"Goma",100,200);
            Producto lapizMina=new Producto(5,"Lapiz mina",300,500);
            Producto regla=new Producto(6,"Regla",100,500);
            Producto plumon=new Producto(7,"Plumon",400,500);
            List<Producto> lista= new ArrayList<>();
            
            lista.add(lapicera);
            lista.add(cuaderno);
            lista.add(corrector);
            lista.add(goma);
            lista.add(lapizMina);
            lista.add(regla);
            lista.add(plumon);
            
            request.getSession().setAttribute("lista", lista);

        %>
        
        
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Precio en pesos chilenos</th>
                    <th>Stock</th>
                </tr>
            </thead>
            <tbody>
                <%
                if(request.getSession().getAttribute("listaActualizada")!=null){
                    lista=(List<Producto>)request.getSession().getAttribute("listaActualizada");
                }    
                    
                for (Producto p : lista) {%>  
                <tr>
                    <td><%= p.getId()%></td>
                    <td><%= p.getNombre()%></td>
                    <td><%= p.getPrecio()%></td>
                    <td><%= p.getStock()%> unidades sin reservar</td>
                </tr>
                <%} %>
            </tbody>
        </table>
        <br>
        <a href="reservar.jsp">Reservar</a>
        
    </body>
</html>
