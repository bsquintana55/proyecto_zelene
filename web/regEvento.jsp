<%-- 
    Document   : regEvento
    Created on : 18/10/2022, 01:29:45 PM
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

    <title>Crear</title>
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

<body id="page-top"
      style="
        background: url(img/fondo/fondo_q.jpg);
        background-size: cover;
        background-repeat: no-repeat;
      "
      >

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav fondo_menu sidebar sidebar-dark accordion" id="accordionSidebar"
            style="
                background: url(img/fondo/fondo_q.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            "
            >

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <img src="img/zele/icono_final.png" class="navbar-brand" alt="main_logo">
                </div>
                <div class="sidebar-brand-text mx-3">ZELENE</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="dashboard.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

          


            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link" href="regEvento.jsp">
                    <i class="fas fa-fw fa-font"></i>
                    <span>Crear Evento</span></a>
            </li>


              <!-- Divider -->
              <hr class="sidebar-divider">

            
              <li class="nav-item">
                <a class="nav-link" href="C_Evento.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Consultar eventos</span></a>
            </li>
         

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="participantes.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Participantes</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

          

        </ul>
        <!-- End of Sidebar -->


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column"
             style="
                background: url(img/fondo/fondo_q.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            ">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand bg-top topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                   
                    

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>

                        </li>


                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                                <img class="img-profile rounded-circle"
                                    src="img/01.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Perfil
                                </a>
                               
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="index.jsp" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Cerrar Sesión
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->







        <div class="container" id="form-even" style=""> 

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image" accesskey=""
                                 
                                  style="
                                background-image: url(img/09.png);
                                background-size: cover;
                                background-repeat: no-repeat; 
                                  "
                                  
                                  ></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">¡Creemos Eventos!</h1>
                                    </div>
                                    <form class="user" method="post" action="evento">

                                        <div class="form-group">
                                            <label for="">Nombre del evento</label>
                                            <input  type="text" name="nombre_even" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Ingresar...">
                                        </div>
                                        <div class="form-group">
                                            <label for="">Fecha inicio</label>
                                            <input type="date" name="feInicio_even" class="form-control form-control-user"
                                                id="exampleInputEmail" >
                                        </div>

                                        <div class="form-group">
                                            <label for="">Fecha final</label>
                                            <input  type="date" name="feFinal_even" class="form-control form-control-user"
                                                id="exampleInputEmail" >
                                        </div>

                                        <div class="form-group">
                                            <label for="">Descripción del evento</label>
                                            <textarea rows="3" name="descrip_even" class="form-control"
                                                id="exampleInputEmail" placeholder="Ingresar..."></textarea>
                                        </div>

                                        <div class="form-group">
                                          <label for=""> Estado del evento</label>
                                                <select  name="estado_even" class="form-control select-estado" id="">
                                                    <option value="I"> Iniciado</option>
                                            
                                                </select>
                                        </div>
                                        
                                         <button class="btn btn-primary btn-user btn-block">Crear</button>
                                           <input type="hidden" value="1" name="opcion">
                                       
                                        <hr>
                                       
                                        <%if (request.getAttribute("MensajeError") != null) {%>
                                                    ${MensajeError}    
                                                    <% } else {%>
                                                    ${MensajeExito}
                                                    <% }%>
                                    </form>
                                    <hr>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
                             
    </div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; ZELENE 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">¿Esta seguro de cerrar sesion?, recuerde guardar cualquier cambio.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.jsp">Cerrar Sesión</a>
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