
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplos % </title>
    </head>
    <body>
        
        <jsp:scriptlet>
           //codigo java  - SCRIPTLETS
           int i = 2;
           int j = 3;
           int suma = i + j;            
          </jsp:scriptlet>
         <!-- expresion -->
         Resultado: <jsp:expression> suma </jsp:expression>
        
        <jsp:declaration>
            int contador = 0;
       </jsp:declaration>
        <br />
        Visitas son : <jsp:expression> ++contador </jsp:expression>
        
    </body>
</html>
