<!DOCTYPE html>
<html lang="es">
<head>
	<title>Login ZELENE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/zele/icono_final.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
 <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/zele/icono_final.png" />
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				
				<img class="logo_login" src="img/zele/zelene.png">

				<div class="login100-pic js-tilt" data-tilt>
					<img src="img/zele/icono_final.png" alt="IMG">
				</div>

			
				<form class="login100-form validate-form" method="post" action="usuario" >
					<span class="login100-form-title">
						Inicio de Sesi�n
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Ingrese su usuario">
			
			<input class="input100" type="text" name="text_nombreu" placeholder="Nombre de Usuario">


						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-circle" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Ingrese su contrase�a">

			<input class="input100" type="password" name="text_contrau" placeholder="Contrase�a">

						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Entrar
						</button>
            <input type="hidden" value="1" name="opcion">                                
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							�Se le olvido la
						</span>
						<a class="txt2" href="#">
							Contrase�a?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Registrate
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>