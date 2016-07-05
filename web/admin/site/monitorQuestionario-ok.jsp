
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.Questionario"%>
<%@page import="java.math.BigInteger"%>
<%@include file="cabecalho.jsp"%>
<%
    BigInteger rdoPergunta = new BigInteger(request.getParameter("rdoPergunta"));
    BigInteger rdoPergunta2 = new BigInteger(request.getParameter("rdoPergunta2"));
    BigInteger rdoPergunta3 = new BigInteger(request.getParameter("rdoPergunta3"));
    BigInteger rdoPergunta4 = new BigInteger(request.getParameter("rdoPergunta4"));
    BigInteger rdoPergunta5 = new BigInteger(request.getParameter("rdoPergunta5"));
    BigInteger rdoPergunta6 = new BigInteger(request.getParameter("rdoPergunta6"));
    BigInteger rdoPergunta7 = new BigInteger(request.getParameter("rdoPergunta7"));
    BigInteger rdoPergunta8 = new BigInteger(request.getParameter("rdoPergunta8"));
    BigInteger rdoPergunta9 = new BigInteger(request.getParameter("rdoPergunta9"));
    BigInteger rdoPergunta10 = new BigInteger(request.getParameter("rdoPergunta10"));
    String maPeriodo = request.getParameter("maPeriodo");
    Long idQuestionario =  Long.parseLong(request.getParameter("idQuestionario"));
    Long idMonitor = Long.parseLong(request.getParameter("idMonitor"));
    
        Questionario objQues = new Questionario();
        
        

        Monitor objMon = new Monitor();
        
                
        MoniAvalDAO dao = new MoniAvalDAO();
        MoniAval obj = new MoniAval();

        obj.setMaResposta1(rdoPergunta);
        obj.setMaResposta2(rdoPergunta2);
        obj.setMaResposta3(rdoPergunta3);
        obj.setMaResposta4(rdoPergunta4);
        obj.setMaResposta5(rdoPergunta5);
        obj.setMaResposta6(rdoPergunta6);
        obj.setMaResposta7(rdoPergunta7);
        obj.setMaResposta8(rdoPergunta8);
        obj.setMaResposta9(rdoPergunta9);
        obj.setMaResposta10(rdoPergunta10);
        obj.setMaPeriodo(maPeriodo);
        objMon.setIdMonitor(idMonitor);
        obj.setMonitor(objMon);
        objQues.setIdQuestionario(idQuestionario);
        obj.setQuestionario(objQues);
        
        dao.incluir(obj);
        
%>
<%@include file="rodape.jsp"%>
