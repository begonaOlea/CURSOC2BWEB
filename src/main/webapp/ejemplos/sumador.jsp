
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplos % </title>
    </head>
    <body>
        
        <%  
           //codigo java  - SCRIPTLETS
           int i = 2;
           int j = 3;
           int suma = i + j;            
        %>
         <!-- expresion -->
        Resultado: <%= suma %>
        
        <%!
            int contador = 0;
        %>
        <br />
        Visitas son : <%= ++contador %>
        
    </body>
</html>
