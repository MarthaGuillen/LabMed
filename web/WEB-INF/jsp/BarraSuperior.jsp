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
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('citologia.htm', 'contenido');$('#processing-modal').modal('hide');">Citolog�a</a></li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('hispatologia.htm', 'contenido');$('#processing-modal').modal('hide');">Hispatolog�a</a></li>
                    </ul>
                </li>
                 <li class="dropdown">
                     <a class="dropdown-toggle" href="#" onclick="$('#processing-modal').modal('show');cargarContenido('Patologia.htm', 'contenido');$('#processing-modal').modal('hide');">Estadistica Patolog�a</a>               
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" onclick="$('#processing-modal').modal('show');cargarContenido('BuscarReportes.htm', 'contenido');$('#processing-modal').modal('hide');">Hojas de Trabajo</a>
 
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Seguridad y Usuarios <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Perfiles</li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('Pefiles.htm', 'contenido');$('#processing-modal').modal('hide');">Crear Perfiles</a></li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('ListaPerfiles.htm', 'contenido');$('#processing-modal').modal('hide');">Lista Perfiles</a></li>            
                       <li class="dropdown-header">Usuarios</li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('NuevoUsuario.htm', 'contenido');$('#processing-modal').modal('hide');">Crear Usuario</a></li>            
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('ListaUsuarios.htm', 'contenido');$('#processing-modal').modal('hide');">Lista Usuario</a></li>                 
                        <li class="dropdown-header">Bitacora</li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('Bitacora.htm', 'contenido');$('#processing-modal').modal('hide');">Reporte de Actividad</a></li>            
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Parametrizaciones<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">�reas</li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('NuevaArea.htm', 'contenido');$('#processing-modal').modal('hide');">Agregar Nueva �rea</a></li>          
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('ListadoDeAreas.htm', 'contenido');$('#processing-modal').modal('hide');">Lista de �reas</a></li>
                        <li class="dropdown-header">Firmas</li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('firmas.htm', 'contenido');$('#processing-modal').modal('hide');">Agregar Firma</a></li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('listaFirmas.htm', 'contenido');$('#processing-modal').modal('hide');">Listar Firmas</a></li>    
                        <li class="dropdown-header">ID Citolog�a</li>
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('idCito.htm', 'contenido');$('#processing-modal').modal('hide');">Agregar ID Citolog�a</a></li>             
                        <li><a href="#" onclick="$('#processing-modal').modal('show');cargarContenido('ListaIDCitologia.htm', 'contenido');$('#processing-modal').modal('hide');">Lista ID Citolog�a</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Usuario <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="CambiarPassw.htm">Cambiar contrase�a</a></li>
                        <li class="divider"></li>
                        <li><a href="Logout.htm">Cerrar Session</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="modal modal-static fade" data-keyboard="false" data-backdrop="static" id="processing-modal" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center">
                    <img src="Resources/image/loading.gif" class="icon" alt=""/>
                    <h4>Cargando...</h4>
                </div>
            </div>
        </div>
    </div>
</div>
