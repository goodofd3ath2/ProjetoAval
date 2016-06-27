<%@page import="dao.ProfAvalDAO"%>
<%@page import="modelo.ProfAval"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.Professor"%>
<%
//pega o professor
Professor prof = new Professor();
//pega o questionario
QuestionarioDAO qdao = new QuestionarioDAO();
  
    List <Questionario> qList = qdao.listar();
    
Questionario q = qList.get(0);

ProfAval pa = new ProfAval();
ProfAvalDAO paDAO = new ProfAvalDAO(); 
//todaS AS RESPOSTAS
   pa.getPaResposta1();
   pa.getPaResposta2();
   pa.getPaResposta3();
   pa.getPaResposta4();
   pa.getPaResposta4();
   pa.getPaResposta5();
   pa.getPaResposta6();
   pa.getPaResposta7();
   pa.getPaResposta8();
   pa.getPaResposta9();
   pa.getPaResposta10();
   
//GRAVA AVALIACAO
paDAO.incluir(pa);

%>
<%@include file="cabecalho.jsp"%>

<h4>Pronto</h4>

 <%@include file="rodape.jsp"%>