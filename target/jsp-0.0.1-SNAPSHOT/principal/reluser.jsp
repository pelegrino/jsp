<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->
	<jsp:include page="theme-loader.jsp"></jsp:include>

	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
	<div class="pcoded-overlay-box"></div>
	<div class="pcoded-container navbar-wrapper">

	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="pcoded-main-container">
	<div class="pcoded-wrapper">

	<jsp:include page="navbarmainmenu.jsp"></jsp:include>
	<div class="pcoded-content">

	<!-- Page-header start -->
	<jsp:include page="page-head.jsp"></jsp:include>

	<!-- Page-header end -->
	<div class="pcoded-inner-content">
		
	<!-- Main-body start -->
	<div class="main-body">
	<div class="page-wrapper">
		
	<!-- Page-body start -->
	<div class="page-body">
	<div class="row">
	<div class="col-sm-12">

	<!-- Basic Form Inputs card start -->
	<div class="card">
	<div class="card-block">
	<h4 class="sub-title">Relatório de Usuários</h4>
										
	<form class="form-material" action="<%=request.getContextPath()%>/ServletUsuarioController" method="get" id="formUser">
	<input type="hidden" id="acaoRelatorioImprimirTipo" name="acao" value="imprimirRelatorioUser">
	
 	<div class="form-row align-items-center">
    
	   	<div class="col-sm-3 my-1">
	    <label class="sr-only" for="dataInicial">Data Inicial</label>
	    <input value="${dataInicial}" type="text" class="form-control" id="dataInicial" name="dataInicial">
	    </div>
	    
	    <div class="col-sm-3 my-1">
	    <label class="sr-only" for="dataFinal">Data Final</label>
	    <input value="${dataFinal}" type="text" class="form-control" id="dataFinal" name="dataFinal">
	    </div>
	    
	    <div class="col-auto my-1">
	    <button type="button" onclick="imprimirHtml();" class="btn btn-primary">Imprimir Relatório</button>
	    <button type="button" onclick="imprimirPdf();" class="btn btn-primary">Imprimir PDF</button>
	    <button type="button" onclick="imprimirExcel();" class="btn btn-primary">Imprimir Excel</button>
	    </div>
    
  	</div>
	
	</form>
	
	<div style="height:300px; overflow: scroll;">
			<table class="table" id="tabelaresultadosview">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Nome</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaUser}" var="ml">
						 <tr>
						 <td><c:out value="${ml.id}"></c:out></td>
						 <td><c:out value="${ml.nome}"></c:out></td>
						 </tr>
					
						<c:forEach items="${ml.telefones}" var="fone">	 
						 <tr>
						 <td/>
						 <td style="font-size: 10px;"><c:out value="${fone.numero}"></c:out></td>
						 </tr>
						 </c:forEach>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
										
	</div>
	</div>
	</div>
	</div>
	</div>
	
	<!-- Page-body end -->
	</div>
		
	<div id="styleSelector"></div>
		
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>

	<!-- Required Jquery -->
	<jsp:include page="javascriptfile.jsp"></jsp:include>

	<script type="text/javascript">
	
	function imprimirHtml() {
		document.getElementById("acaoRelatorioImprimirTipo").value = 'imprimirRelatorioUser';
		$("#formUser").submit();
	}
	
	
	function imprimirPdf() {
		document.getElementById("acaoRelatorioImprimirTipo").value = 'imprimirRelatorioPDF';
		$("#formUser").submit();
		return false;
	}
	
	
	function imprimirExcel() {
		document.getElementById("acaoRelatorioImprimirTipo").value = 'imprimirRelatorioExcel';
		$("#formUser").submit();
		return false;
	}
	
	
	$( function() {
		  
	  	$("#dataInicial").datepicker({
		    dateFormat: 'dd/mm/yy',
		    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
		    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
		    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
		    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
		    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
		    nextText: 'Próximo',
		    prevText: 'Anterior'
		});
	} );
	
	
	$( function() {
			  
		$("#dataFinal").datepicker({
			dateFormat: 'dd/mm/yy',
			dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
			dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
			dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
			monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
			monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
			nextText: 'Próximo',
			prevText: 'Anterior'
		});
	} );
	
	
	</script>

</body>

</html>