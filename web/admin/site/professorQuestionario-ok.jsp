
<%@page import="java.math.BigInteger"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="dao.ProfAvalDAO"%>
<%@page import="modelo.ProfAval"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    String msg = "";
    if (request.getParameter("rdopergunta1") != null
            && request.getParameter("rdopergunta1") != null || request.getParameter("rdopergunta1") != null
            || request.getParameter("rdopergunta1") != null
            || request.getParameter("rdopergunta1") != null || request.getParameter("rdopergunta1") != null
            || request.getParameter("rdopergunta1") != null || request.getParameter("rdopergunta1") != null
            || request.getParameter("rdopergunta1") != null || request.getParameter("rdopergunta1") != null) {
        response.sendRedirect("index.jsp");
    } else {
        msg = "Confirmou";
        BigInteger v_resposta1 = new BigInteger(request.getParameter("txtPAResposta1"));
        BigInteger v_resposta2 = new BigInteger(request.getParameter("txtPAResposta2"));
        BigInteger v_resposta3 = new BigInteger(request.getParameter("txtPAResposta3"));
        BigInteger v_resposta4 = new BigInteger(request.getParameter("txtPAResposta4"));
        BigInteger v_resposta5 = new BigInteger(request.getParameter("txtPAResposta5"));
        BigInteger v_resposta6 = new BigInteger(request.getParameter("txtPAResposta6"));
        BigInteger v_resposta7 = new BigInteger(request.getParameter("txtPAResposta7"));
        BigInteger v_resposta8 = new BigInteger(request.getParameter("txtPAResposta8"));
        BigInteger v_resposta9 = new BigInteger(request.getParameter("txtPAResposta9"));
        BigInteger v_resposta10 = new BigInteger(request.getParameter("txtPAResposta10"));

        //Chamar a inclusão da DAO
        QuestionarioDAO qdao = new QuestionarioDAO();
        List<Questionario> qList = qdao.listar();
        Questionario q = qList.get(0);

        ProfAval pa = new ProfAval();
        ProfAvalDAO paDAO = new ProfAvalDAO();

        pa.setPaResposta1(v_resposta1);
        pa.setPaResposta2(v_resposta2);
        pa.setPaResposta3(v_resposta3);
        pa.setPaResposta4(v_resposta4);
        pa.setPaResposta5(v_resposta5);
        pa.setPaResposta6(v_resposta6);
        pa.setPaResposta7(v_resposta7);
        pa.setPaResposta8(v_resposta8);
        pa.setPaResposta9(v_resposta9);
        pa.setPaResposta10(v_resposta10);

        paDAO.incluir(pa);
%>



<h4>Pronto</h4>

<%@include file="rodape.jsp"%>