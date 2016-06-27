

<%@page import="java.util.List"%>
<%@page import="dao.MonitorDAO"%>
<%@page import="modelo.MoniAval"%>
<%@page import="modelo.Monitor"%>
<%@include file="cabecalho.jsp"%>
<%
    Monitor monitor;
    
   MonitorDAO monit = new MonitorDAO();
   
List <Monitor> lista;


MoniAval moni = new MoniAval();









    %>




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação monitores</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="pergunta">
 <div class="opcoes">
                <form action="index.jsp" method="post">
                    <div class="form-group">
                        <label>Selecione os monitores</label>
                        <select class="form-control">
                            <option><%=moni.getMonitor() %></option>
                            <option><%=moni.getMonitor() %></option>
                            <option><%=moni.getMonitor() %></option>
                            <option><%=moni.getMonitor() %></option>
                            <option><%=moni.getMonitor() %></option>
                        </select>
                    </div>
            <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
             <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
              <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
               <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
                <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
                  <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
                 <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline1" value="resposta1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline2" value="resposta2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline3" value="resposta3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline4" value="resposta4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline5" value="resposta5">Excelente
                        </label>
                    </div>
                    <br/>
                    <hr/>
                    <input type="submit" value="confirmar" name="btnConfirmar" />


                </form>
            </div>
        </div>
        <div class="painelUsuario">

            <br />

        </div>

    </body>

    <%@include file="rodape.jsp"%>
