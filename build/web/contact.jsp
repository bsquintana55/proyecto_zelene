<%-- 
    Document   : formulario
    Created on : 15/11/2022, 08:02:42 PM
    Author     : solan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Formulario de participación</title>
    <link rel="icon" type="image/x-icon" href="img/zele/icono_final.png"/>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dash.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
       

</head>

<body class="bg-fondo-form" style="background-image: url(img/fondo/fondo_k.jpg)">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-formulario-image" 
                                 style="
                                  background: url(img/02.png);
                                  background-size: cover;
                                  background-repeat: no-repeat;">
        
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">¡No pierdas la oportunidad!</h1>
                                    </div>
                                    
                                    
                                    
                                    
                                    <form class="user" method="post" action="Participante">

                                        <div class="form-group">
                                            <input type="text" name="nombre_parti" class="form-control form-control-user"
                                                id="" aria-describedby="emailHelp" data-sb-validations="required"
                                                placeholder="Ingresar Nombre">
                                            <div class="invalid-feedback" data-sb-feedback="name:required">Nombre es necesario.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" name="correo_parti" class="form-control form-control-user"
                                                id="" aria-describedby="emailHelp" data-sb-validations="required"
                                                placeholder="Ingresar Correo">
                                             <div class="invalid-feedback" data-sb-feedback="email:required">Correo es necesario.</div>
                                            <div class="invalid-feedback" data-sb-feedback="email:email">Gmail no valido.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="celu_parti" class="form-control form-control-user"
                                                id="" data-sb-validations="required" placeholder="Ingresar # Celular">
                                             <div class="invalid-feedback" data-sb-feedback="phone:required">Telefono es necesario.</div>
                                        </div>
                                        <br>
                                      
                                        <a href="form_Even.jsp" class="">
                                           <button class="btn btn-primary btn-user btn-block">Registrarse</button>
                                           <input type="hidden" value="1" name="opcion"> 
                                        </a>
                                        
                                        
                                        <hr>
                                       
                                        <%if (request.getAttribute("MensajeError") != null) {%>
                                                    ${MensajeError}    
                                                    <% } else {%>
                                                    ${MensajeExito}
                                                    <% }%>
                                        <hr>
                                       
                                    </form>
                                        
                                        
                                    
                                    <div class="text-center">
                                        <a class="small" href="index.jsp">Ir a Eventos</a>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
