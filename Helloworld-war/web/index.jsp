<%-- 
    Document   : index
    Created on : 27/03/2023, 09:42:09 AM
    Author     : Andres Felipe Avila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario Datos</h1>        
        <form name="Registro Entrada" action="response.jsp">
            ingrese su Nombre: <input type="text" name="nombre"/><br>
            ingrese su Apellido:<input type="text" name="apellido"/><br>
            ingrese su Fecha Nacimiento: <input type="date" name="nacimiento"/>
            <input type="submit" value="Enviar" name="Button_Enviar"/>
        </form>
    </body>
</html>
