<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="./res/css/style.css">
    </head>
    <body>
        <div id="main">
        <h1 align="center">My Work</h1>
        <div class="text">
        <%
            Date date = new Date( );
            SimpleDateFormat dt = new SimpleDateFormat ("Дата:dd-MM-yyyy");
            SimpleDateFormat vr = new SimpleDateFormat ("Время:HH:mm:ss");
            out.print( "<h2 align=\"center\">" + dt.format(date) + "</h2>");
            out.print( "<h2 align=\"center\">" + vr.format(date) + "</h2>");
            
            String compName = InetAddress.getLocalHost().getHostName();
            out.print("<h2 align=\"center\">Название компьютера: " + compName + "</h2>");
            
            out.print("<h2 align=\"center\">Свободной памяти на компьютере: " + Runtime.getRuntime().freeMemory() + "</h2>");
            out.print("<h2 align=\"center\">Всего памяти на компьютере: " + Runtime.getRuntime().totalMemory() + "</h2>");
        %>
        </div>
        </div>
    </body>
</html>
