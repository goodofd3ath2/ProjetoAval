<%-- 
    Document   : login
    Created on : 20/06/2016, 15:34:52
    Author     : Aluno
--%>

<%@include file="cabecalho.jsp"%>
<!DOCTYPE html>
<html>
    <%
    Monitor monitor = (Monitor)session.getAttribute("monitor");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monitores</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="usuario">
            <%=monitor.getLogin()%>
        </div>
        <div class="centralizar">
            <img src="img/gatinho.png" alt=""/>
            <br/>
            
            <a href="monitorQuestionario.jsp">Iniciar Jogo</a>
            <a href="index.jsp">Sair</a>
        </div>
        
    </body>
</html>


<%@include file="rodape.jsp"%>
