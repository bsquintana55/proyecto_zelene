<%-- 
    Document   : verMascota
    Created on : 19/08/2022, 09:21:42 AM
    Author     : julia_000
--%>


<%@page import="modeloVO.eventoVO"%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloDAO.usuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="img/zele/icono_final.png"/>
    
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dash.css">
</head>

<body class="bg-fondo-form">
      <%
            eventoVO eveVO = (eventoVO) request.getAttribute("Consulta_evento");
            if (eveVO != null) {
        %>
    

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-contraseña-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">
                                            <%=eveVO.getNombre_even()%>
                                        </h1>
                                    </div>



                                    <form class="user"  method="post" action="evento">

                                        <div class="form-group">
                                            <input class="form-control form-control-user"
                                            type="hidden" 
                                            value="<%=eveVO.getId_even() %>" name="id_even">

                                        </div>

                                        <div class="form-group">
                                           <input class="form-control form-control-user"
                                            type="hidden" 
                                            value="<%=eveVO.getId_even() %>" name="id_even">
                                        </div>

                                        <div class="form-group">
                                            <label for="">Nombre</label>
                                            <input class="form-control form-control-user"
                                            type="text" id="nombre" 
                                            value="<%=eveVO.getNombre_even()%>" name="nombre_even">
                                         </div>

                                         <div class="form-group">
                                            <label for="">Fecha Inicio</label>
                                            <input class="form-control form-control-user"
                                            type="date" id="fechaI" 
                                            name="feInicio_even" value="<%=eveVO.getFeInicio_even()%>">
                                         </div>

                                         <div class="form-group">
                                            <label for="">Fecha final</label>
                                            <input class="form-control form-control-user"
                                            type="date" name="feFinal_even" 
                                            value="<%=eveVO.getFeInicio_even()%>">
                                         </div>
                                         
                                         <div class="form-group">
                                            <label for="">Estado</label>
                                            <input class="form-control form-control-user"
                                            type="text" name="estado_even"
                                             value="<%=eveVO.getEstado_even()%>">
                                         </div>
                                         
                                         <div class="form-group">
                                            <label for="">Descripcion del evento</label>
                                            <input class="form-control form-control-user"
                                            type="text" name="descrip_even"
                                             value="<%=eveVO.getDescrip_even()%>">
                                         </div>
                                        

                                     
                                        <button id="actualizar" class="btn btn-primary btn-user btn-block">Actualizar</button>
                                        <input type="hidden" value="2" name="opcion" id="actualizar">
                                        <hr>
                                       
                                          <%}%>
                                <%
                                if (request.getAttribute("MensajeError") != null) { %>
                                ${MensajeError}

                                <% } else {%>
                                ${MensajeExito}
                                <%}%>
            
                                        
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="C_Evento.jsp">Regresar</a>
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