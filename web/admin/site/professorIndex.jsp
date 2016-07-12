<%@page import="java.util.List"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    // Pesquisar o nome do professor e lhe entregar sua m�dia geral de avalia��o
    Professor profe = new Professor();
    ProfessorDAO profDAO = new ProfessorDAO();
    List<Professor> pList = profDAO.listar();
%>

<body>
    
        <div class="pergunta">
            <div class="opcoes">
                <form action="professorIndex-ok.jsp" method="post">
                    <div class="form-group">
                        <label>Selecione o professor que voc� deseja saber a m�dia de seu desempenho</label>
                        <select class="form-control" id="idProfessor" name="idProfessor" value="<%=profe.getIdProfessor()%>">
                            <option value="">Selecione..</option>
                            <%
                                for (Professor p : pList) {
                            %>
                            <option value="<%=p.getIdProfessor()%>"><%=p%></option>
                        <%
                            }
                        %>
                        </select>
                        
                    </div>
                        <br/>
                    <hr/>
                    <input type="submit" value="Saber m�dia" name="btnConfirmar"  /> 
              
                
            </div>
        
        <div class="painelUsuario">

            <br />
        
        </div>
</div>
</body>
</html>
 <%@include file="rodape.jsp"%>
