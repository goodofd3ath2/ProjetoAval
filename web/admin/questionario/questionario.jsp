<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp"%>
<%    QuestionarioDAO dao = new QuestionarioDAO();
    List<Questionario> lista = dao.listar();

    if (request.getParameter("txtFiltro") != null && request.getParameter("txtFiltro") != "") {
        String txtFiltro = request.getParameter("txtFiltro");
        lista = dao.listar(txtFiltro);
    } else {
        lista = dao.listar();
    }

%>
<!-- gambiarra pra alinhar o bot�o a esquerda-->
<style>
    .direita
    {
        text-align: right;
        padding-right: 10%;

    }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Question�rio</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="questionario-cadastrar.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Per�odo</th>
                        <th>Pergunta1</th>
                        <th>Pergunta2</th>
                        <th>Pergunta3</th>
                        <th>Pergunta4</th>
                        <th>Pergunta5</th>
                        <th>Pergunta6</th>
                        <th>A��es</th>
                    </tr>
                </thead>
                <%                            
                    for (Questionario obj : lista) {
                %>
                <tbody>
                    <tr>
                        <td><%=obj.getIdQuestionario()%></td>
                        <td><%=obj.getQuestPeriodo()%></td>
                        <td><%=obj.getPergunta1()%></td>
                        <td><%=obj.getPergunta2()%></td>
                        <td><%=obj.getPergunta3()%></td>
                        <td><%=obj.getPergunta4()%></td>
                        <td><%=obj.getPergunta5()%></td>
                        <td><%=obj.getPergunta6()%></td>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="questionario-atualizar.jsp?IdQuestionario=<%=obj.getIdQuestionario()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="questionario-excluir-ok.jsp?IdQuestionario=<%=obj.getIdQuestionario()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>

                        </td>


                    </tr>
                </tbody>
                <%
                    }
                %>
            </table>


        </div>
    </div>
</section>