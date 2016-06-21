<%@page import="modelo.Questionario"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@page import="java.math.BigInteger"%>
<%@include file="../cabecalho.jsp"%>
<%@page import="dao.ProfAvalDAO"%>
<%@page import="modelo.ProfAval"%>
<%
    String msg="";
    // ARRUMAR OS REQUESTS DO IF
    if(request.getParameter("txtIdpa") == null || request.getParameter("txtPeriodoPA")== null || request.getParameter("txtPAResposta1") == null 
            || request.getParameter("txtPAResposta2") == null || request.getParameter("txtPAResposta3") == null || request.getParameter("txtPAResposta4") == null
            || request.getParameter("txtPAResposta5") == null || request.getParameter("txtPAResposta7") == null || request.getParameter("txtPAResposta8") == null
            || request.getParameter("txtPAResposta9") == null || request.getParameter("txtPAResposta10") == null)        
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
          
        Long idPA = Long.parseLong(request.getParameter("txtIdpa"));
        Long idProfessor = Long.parseLong(request.getParameter("selProfessor"));
        Long idQuestionario = Long.parseLong(request.getParameter("selQuestionario"));
        String periodoPA = request.getParameter("txtPeriodoPA");
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
        
        
        Questionario quest = new Questionario();
        quest.setIdQuestionario(idQuestionario);
        
        Professor prof = new Professor();
        prof.setIdProfessor(idProfessor);
        
        ProfAvalDAO dao = new ProfAvalDAO();
        ProfAval pa = new ProfAval();
        
        pa.setIdProfaval(idPA);
        pa.setPaPeriodo(periodoPA);
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
        pa.setProfessor(prof);
        pa.setIdQuestionario(quest);
        
       try
        {
            dao.incluir(pa);
            msg = "Avalia��o do Professor cadastrada com sucesso";
            
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar avalia��o";
        }
        
       
    }
    
    String idPA = request.getParameter("txtIdpa");
    String periodoPA = request.getParameter("txtPeriodoPA");
    String selProfessor = request.getParameter("selProfessor");
    String selQuestionario = request.getParameter("selQuestionario");
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
             <%=msg%>.<br />
             C�digo da Avalia��o do Professor: <%=idPA%><br />
             Per�odo da Avalia��o: <%=periodoPA%><br />
             C�digo do Professor <%=selProfessor%><br />
             C�digo do Question�rio: <%=selQuestionario%><br />
            <a href="list.jsp"><i class="material-icons">list</i></a>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>