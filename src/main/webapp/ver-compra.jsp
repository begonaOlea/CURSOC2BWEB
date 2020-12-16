<%-- 
    Document   : ver-compra
    Created on : 16-dic-2020, 10:44:31
    Author     : ususario
--%>

<%@page import="com.demo.model.DB"%>
<%@page import="java.util.Collection"%>
<%@page import="com.demo.model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Compras</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Lista de Compras</h1>
            Fecha : <%=   java.time.LocalDate.now()%>

            <%
                Collection<Producto> lista = DB.getAllProductos();
            %>

            <table class="table">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(Producto p : lista){ %>
                    <tr>
                        <td> <%= p.getId() %>  </td>
                        <td><%= p.getNombre() %></td>
                        <td><%= p.getDescripcion() %></td>
                    </tr>
                    
                    <% }//fin for %>
                </tbody>
            </table>
        </div>
    </body>
</html>
