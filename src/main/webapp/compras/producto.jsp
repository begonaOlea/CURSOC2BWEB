<%-- 
    Document   : producto
    Created on : 16-dic-2020, 12:14:09
    Author     : ususario
--%>

<%@page import="com.demo.model.Producto"%>
<%@page import="com.demo.model.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Producto Comprado</title>
        <%@include file="../WEB-INF/vista/bootStrap.html" %>
    </head>
    <body>
        <div class="container">
            <h1>Detalle Producto comprado</h1>

            <%-- comentario jsp --%>
            <!--  comentario html -->

            <%
                //java
                //objetos implicito 
                String paramId = request.getParameter("id");
                //out.print("esto sale en el html " + paramId);           
                // session.getAttribute("lll");
                int id = Integer.parseInt(paramId); //posible error falta controlar
                //ñapa
                id = 1;
                Producto p = DB.getProducto(id);                
            %>

            <form>
                <div class="form-group">
                    <label for="nom">Nombre</label>
                    <input type="text" class="form-control" value="<%= p.getNombre() %> " disabled="disabled">
                </div>
                <div class="form-group">
                    <label for="desc">Nombre</label>
                    <input type="text" class="form-control" value="<%= p.getDescripcion()%> " disabled="disabled">
                </div>
             <div class="form-group">
                    <label for="pre">precio</label>
                    <input type="text" class="form-control" value="<%= p.getPrecio()%> " disabled="disabled">
                </div>                
            </form>
        </div>  


    </body>
</html>
