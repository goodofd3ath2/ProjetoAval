<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    if (request.getParameter("idDisciplina") == null) {
        response.sendRedirect("disciplina.jsp");
        //para a execu��o aqui
        return;
    }

    Long idDisciplina = Long.parseLong(request.getParameter("idDisciplina"));
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(idDisciplina);

    String msg = "";
    if (obj != null) {
        dao.excluir(obj);
        msg = "Registro exclu�do com sucesso";
    } else {
        msg = "Erro ao excluir o registro";
    }


%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%><br />
            <a href="disciplina.jsp"><i class="material-icons">list</i></a>
        </div>
    </div>
</section>

<%@include file="../rodape.jsp"%>

