


<%@page import="modelo.ProfAval"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    Professor professor;
    Professor profe = new Professor();
    
    ProfessorDAO profDAO = new ProfessorDAO();
    
    List <Professor> lista;
    
    ProfAval prof = new ProfAval();
    





    %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação professores</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="pergunta">
 <div class="opcoes">
                <form action="index.jsp" method="post">
                    <div class="form-group">
                        <label>Selecione os professores</label>
                        <select class="form-control">
                            <option><%=prof.getProfessor() %></option>
                            <option><%=prof.getProfessor() %></option>
                            <option><%=prof.getProfessor() %></option>
                            <option><%=prof.getProfessor() %></option>
                            <option><%=prof.getProfessor() %></option>
                        </select>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta1() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta1() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta1() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta1() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta1() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta2() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta2() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta2() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta2() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta2() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta3() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta3() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta3() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta3() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta3() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta4() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta4() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta4() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta4() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta4() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta5() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta5() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta5() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta5() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta5() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta6() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta6() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta6() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta6() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta6() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta7() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta7() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta7() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta7() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta7() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta8() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta8() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta8() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta8() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta8() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta9() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta9() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta9() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta9() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta9() %>Excelente
                        </label>
                    </div>
            <h4 class="enunciado"><%=prof.getQuestionario() %></h4>
           
                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline1" value="resposta1" checked><%=prof.getPaResposta10() %>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline2" value="resposta2"><%=prof.getPaResposta10() %>Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline3" value="resposta3"><%=prof.getPaResposta10() %>Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline4" value="resposta4"><%=prof.getPaResposta10() %>ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline5" value="resposta5"><%=prof.getPaResposta10() %>Excelente
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

        
