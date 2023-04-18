<%-- 
    Document   : response
    Created on : 27/03/2023, 10:11:23 AM
    Author     : Andres Felipe Avila
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Respuesta</h1>
        
        <jsp:useBean id="mybean" scope="session" class="co.edu.unipiloto.metodos.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="nombre"  />
        <jsp:setProperty name="mybean" property="apellido"  />
        <jsp:setProperty name="mybean" property="nacimiento"/>
        
     
        <% LocalDate currentDate = LocalDate.now(); %>
        
 
        <% LocalDate fechaNacimiento = LocalDate.parse(mybean.getNacimiento());%>
        
    
        <% int edad = currentDate.getYear() - fechaNacimiento.getYear(); %>
        <% if (fechaNacimiento.getDayOfYear() < currentDate.getDayOfYear()) {
                edad++;
            } 
        %>
      
        <% java.util.Calendar clock = java.util.Calendar.getInstance();%>
        <% if (clock.get(Calendar.HOUR_OF_DAY) < 12) { %>
            <h1>Buenos días, <%= mybean.getNombre() %> <%=mybean.getApellido()%>, tu fecha de nacimiento es <%= mybean.getNacimiento() %> y tienes <%= edad %> años</h1>
        <% } else if (clock.get(Calendar.HOUR_OF_DAY) < 18) { %>
            <h1>Buenas tardes, <%= mybean.getNombre() %> <%=mybean.getApellido()%>,tu fecha de nacimiento es <%= mybean.getNacimiento() %> y tienes <%= edad %> años</h1>
        <% } else { %>
            <h1>Buenas noches, <%= mybean.getNombre() %> <%=mybean.getApellido()%>,tu fecha de nacimiento es <%= mybean.getNacimiento() %> y tienes <%= edad %> años</h1>
        <% } %>
        
        
    </body>
</html>
