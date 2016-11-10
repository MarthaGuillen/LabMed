<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-inverse" style = "border-color: #565353;">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style = "border-color: white; color: white">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="#" style = "color: white; font-weight: bold;">PIF Patologia</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar" >
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#">Documentos</a>                    
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Resultados <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" onclick="cargarContenido('citologia.htm', 'contenido');">Citología</a></li>
                        <li><a href="#" onclick="cargarContenido('hispatologia.htm', 'contenido');">Hispatología</a></li>
                    </ul>
                </li>
                 <li class="dropdown">
                     <a class="dropdown-toggle" href="#" onclick="cargarContenido('Patologia.htm', 'contenido');">Estadistica Patología</a>               
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" onclick="cargarContenido('BuscarReportes.htm', 'contenido');">Hojas de Trabajo</a>
 
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Seguridad y Usuarios <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Perfiles</li>
                        <li><a href="#" onclick="cargarContenido('Pefiles.htm', 'contenido')">Crear Perfiles</a></li>
                        <li><a href="#" onclick="cargarContenido('ListaPerfiles.htm', 'contenido');">Lista Perfiles</a></li>            
                       <li class="dropdown-header">Usuarios</li>
                        <li><a href="#" onclick="cargarContenido('NuevoUsuario.htm', 'contenido');">Crear Usuario</a></li>            
                        <li><a href="#" onclick="cargarContenido('ListaUsuarios.htm', 'contenido');">Lista Usuario</a></li>                 
                        <li class="dropdown-header">Bitacora</li>
                        <li><a href="#" onclick="cargarContenido('Bitacora.htm', 'contenido');">Reporte de Actividad</a></li>            
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Parametrizaciones<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Áreas</li>
                        <li><a href="#" onclick="cargarContenido('NuevaArea.htm', 'contenido');">Agregar Nueva Área</a></li>
                        <li class="dropdown-header">Firmas</li>
                        <li><a href="#" onclick="cargarContenido('firmas.htm', 'contenido');">Agregar Firma</a></li>
                        <li><a href="#" onclick="cargarContenido('listaFirmas.htm', 'contenido');">Listar Firmas</a></li>    
                        <li class="dropdown-header">ID Citología</li>
                        <li><a href="#" onclick="cargarContenido('idCito.htm', 'contenido');">Agregar ID Citología</a></li>             
                        <li><a href="#" onclick="cargarContenido('ListaIDCitologia.htm', 'contenido');">Lista ID Citología</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Usuario <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="CambiarPassw.htm">Cambiar contraseña</a></li>
                        <li class="divider"></li>
                        <li><a href="Logout.htm">Cerrar Session</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
