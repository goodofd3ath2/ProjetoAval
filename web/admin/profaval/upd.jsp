<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%@page import="dao.ProfAvalDAO"%>
<%@page import="modelo.ProfAval"%>
<%    if (request.getParameter("Idpa") == null) {
        response.sendRedirect("list.jsp");
        return;
    }
    Long idPA = Long.parseLong(request.getParameter("Idpa"));
    ProfAvalDAO dao = new ProfAvalDAO();
    ProfAval pa = dao.buscarPorChavePrimaria(idPA);
    if (pa == null) {
        response.sendRedirect("list.jsp");
        return;
    }
    ProfessorDAO pdao = new ProfessorDAO();
    List<Professor> lista = pdao.listar();
    QuestionarioDAO qdao = new QuestionarioDAO();
    List<Questionario> qlista = qdao.listar();
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Atualizar Avalia��o de Professores</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- �rea que ocupar� o campo de formul�rio
                    segunda div -- campo de texto e label 
                -->

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdpa" value="<%=pa.getIdProfaval()%>" readonly="readonly"/>
                        <label class="mdl-textfield__label" for="txtIdpa">ID da Avalia��o do Professor</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selMonitor" name="selProfessor" value="<%=pa.getProfessor()%>">
                            <option value="">Selecione a resposta</option>
                            <%
                                String selected = "";
                                for (Professor item : lista) {
                                    if (item.getIdProfessor() == pa.getProfessor().getIdProfessor()) {
                                        selected = "selected";
                                    }
                            %>
                            <option value="<%=item.getProfNome()%>" <%=selected%>><%=item%></option>
                            <%
                                    selected = "";
                                }
                            %>
                        </select>
                    </div>
                </div>

                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selQuestionario" name="selQuestionario" value="<%=pa.getQuestionario()%>">
                            <option value="">Selecione a resposta</option>
                            <%
                                String selecte = "";
                                for (Questionario item : qlista) {
                                    if (item.getIdQuestionario() == pa.getQuestionario().getIdQuestionario()) {
                                        selecte = "selecte";
                                    }
                            %>
                            <option value="<%=item.getIdQuestionario()%>" <%=selecte%>><%=item%></option>
                            <%
                                    selecte = "";
                                }
                            %>
                        </select>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPeriodoPA" />
                        <label class="mdl-textfield__label" for="txtPeriodoPA">Per�odo</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta1" />
                        <label class="mdl-textfield__label" for="txtPAResposta1">Resposta 1</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta2" />
                        <label class="mdl-textfield__label" for="txtPAResposta2">Resposta 2</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta3" />
                        <label class="mdl-textfield__label" for="txtPAResposta3">Resposta 3</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta4" />
                        <label class="mdl-textfield__label" for="txtPAResposta4">Resposta 4</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta5" />
                        <label class="mdl-textfield__label" for="txtPAResposta5">Resposta 5</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta6" />
                        <label class="mdl-textfield__label" for="txtPAResposta6">Resposta 6</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta7" />
                        <label class="mdl-textfield__label" for="txtPAResposta7">Resposta 7</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta8" />
                        <label class="mdl-textfield__label" for="txtPAResposta8">Resposta 8</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta9" />
                        <label class="mdl-textfield__label" for="txtPAResposta9">Resposta 9</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPAResposta10" />
                        <label class="mdl-textfield__label" for="txtPAResposta10">Resposta 10</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col">

                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">clear</i></button>


                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>