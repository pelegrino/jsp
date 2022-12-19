<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<title>JSP</title>

<style type="text/css">
form {
	position: absolute;
	top: 40%;
	left: 33%;
	right: 33%;
}

h3 {
	align-items: center; position : absolute;
	top: 30%;
	left: 33%;
	position: absolute;
}

h6 {
	position: absolute;
	top: 80%;
	left: 33%;
	color: red;
}
</style>


</head>
<body>
	<h3>Bem vindo</h3>

	<form action="<%= request.getContextPath() %>/ServletLogin" method="post"
		class="row g-3 needs-validation" novalidate>
		<input type="hidden" value="<%=request.getParameter("url")%>"
			name="url">

		<div class="mb-3">
			<label class="form-label">Login</label> <input type="text"
				class="form-control" name="login" required="required">
			<div class="valid-feedback">Ok</div>
			<div class="invalid-feedback">Obrigatório</div>
		</div>


		<div class="mb-3">
			<label class="form-label">Senha</label> <input type="password"
				class="form-control" name="senha" required="required">
			<div class="valid-feedback">Ok</div>
			<div class="invalid-feedback">Obrigatório</div>
		</div>

		<div class="col-12">
			<input type="submit" class="btn btn-primary" value="Acessar">
		</div>


	</form>

	<h6>${msg}</h6>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
	</script>
</body>
</html>