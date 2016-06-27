

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
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta1() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta1() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta1() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta1() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta1() %>Excelente
                        </label>
                    </div>
             <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta2() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta2() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta2() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta2() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta2() %>Excelente
                        </label>
                    </div>
              <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta3() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta3() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta3() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta3() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta3() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta4() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta4() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta4() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta4() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta4() %>Excelente
                        </label>
                    </div>
               <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta5() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta5() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta5() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta5() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta5() %>Excelente
                        </label>
                    </div>
                <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta6() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta6() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta6() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta6() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta6() %>Excelente
                        </label>
                    </div>
                  <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta7() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta7() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta7() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta7() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta7() %>Excelente
                        </label>
                    </div>
                 <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta8() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta8() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta8() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta8() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta8() %>Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta9() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta9() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta9() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta9() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta9() %>Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=moni.getQuestionario()%></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline1" value="resposta1" checked><%=moni.getMaResposta10() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline2" value="resposta2"><%=moni.getMaResposta10() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline3" value="resposta3"><%=moni.getMaResposta10() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline4" value="resposta4"><%=moni.getMaResposta10() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline5" value="resposta5"><%=moni.getMaResposta10() %>Excelente
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
