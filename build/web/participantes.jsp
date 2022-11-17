<%-- 
    Document   : consultarMascota
    Created on : 25/07/2022, 09:50:38 AM
    Author     : julia_000
--%>
<%@page import="modeloDAO.eventoDAO"%>
<%@page import="modeloDAO.eventoDAO"%>
<%@page import="modeloVO.eventoVO"%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloDAO.usuarioDAO"%>
<%@page import="modeloVO.partiVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.partiDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Eventos</title>
    <link rel="icon" type="image/x-icon" href="img/zele/icono_final.png"/>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dash.css">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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


         <!-- Inicio de tables -->


  
         <!-- Begin Page Content -->
                <div class="container-fluid"
                   style="
                background: url(img/fondo/fondo_q.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            " 
                >

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                           <h1 class="h3 mb-2 text-gray-800">Participantes</h1>
                          

                        </div>
                            
                        
                        <div class="card-body">
                            
                            <div class="table-responsive">
                                
                                <form method="post" action="evento">  
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Num. Evento</th>
                                            <th>Nombre Evento</th>
                                            <th>Fecha Inicio</th>
                                            <th>Fecha Final</th>
                                            <th>Estado</th>
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Num. Evento</th>
                                            <th>Nombre Evento</th>
                                            <th>Fecha Inicio</th>
                                            <th>Fecha Final</th>
                                            <th>Evento</th>
                                            
                                        </tr>
                                    </tfoot>
                                    <%
                                        partiVO parVO = new partiVO();
                                        partiDAO parDAO = new partiDAO();
                                        ArrayList<partiVO> listaParti = parDAO.listar();
                                        for (int i = 0; i < listaParti.size(); i++) {

                                            parVO = listaParti.get(i);
                                         %>
                                  
                                         
                                      
                                        <%
                                        eventoVO eveVO = new eventoVO();
                                        eventoDAO eveDAO = new eventoDAO();
                                        ArrayList<eventoVO> listEven = eveDAO.evento();
                                        for (int a = 0; a < listEven.size(); a++) {

                                            eveVO = listEven.get(a);

                                        %>
                                    <tbody>
                                        <tr>
                                           
                                            <td><%=parVO.getId_parti()%></td>
                                            <td><%=parVO.getNombre_parti()%></td>
                                            <td><%=parVO.getCorreo_parti()%></td>
                                            <td><%=parVO.getCelu_parti()%></td>
                                            <td><%=eveVO.getNombre_even()%></td>
                                             
                                      
                                      
                                        </tr>

                                         <%}%>
                                       
                                    </tbody>
                                </table>
                        </form>
                            </div>
                        </div>
                       
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

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

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

      

</body>

</html>