
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.Questionario"%>
<%@page import="java.math.BigInteger"%>
<%@include file="cabecalho.jsp"%>
<%
    BigInteger maResposta1 = new BigInteger(request.getParameter("txtMaResposta1"));
    BigInteger maResposta2 = new BigInteger(request.getParameter("txtMaResposta2"));
    BigInteger maResposta3 = new BigInteger(request.getParameter("txtMaResposta3"));
    BigInteger maResposta4 = new BigInteger(request.getParameter("txtMaResposta4"));
    BigInteger maResposta5 = new BigInteger(request.getParameter("txtMaResposta5"));
    BigInteger maResposta6 = new BigInteger(request.getParameter("txtMaResposta6"));
    BigInteger maResposta7 = new BigInteger(request.getParameter("txtMaResposta7"));
    BigInteger maResposta8 = new BigInteger(request.getParameter("txtMaResposta8"));
    BigInteger maResposta9 = new BigInteger(request.getParameter("txtMaResposta9"));
    BigInteger maResposta10 = new BigInteger(request.getParameter("txtMaResposta10"));
    
        Questionario objQues = new Questionario();
        

        Monitor objMon = new Monitor();
        
        
        MoniAvalDAO dao = new MoniAvalDAO();
        MoniAval obj = new MoniAval();

        obj.setMaResposta1(maResposta1);
        obj.setMaResposta2(maResposta2);
        obj.setMaResposta3(maResposta3);
        obj.setMaResposta4(maResposta4);
        obj.setMaResposta5(maResposta5);
        obj.setMaResposta6(maResposta6);
        obj.setMaResposta7(maResposta7);
        obj.setMaResposta8(maResposta8);
        obj.setMaResposta9(maResposta9);
        obj.setMaResposta10(maResposta10);
        obj.setMonitor(objMon);
        obj.setQuestionario(objQues);
        
dao.incluir(obj);
        
%>
<%@include file="rodape.jsp"%>
