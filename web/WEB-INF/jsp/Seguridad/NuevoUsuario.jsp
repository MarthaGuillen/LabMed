<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" id="TituloContenido" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Usuarios
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary" onclick="guardarUsuario();">Guardar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
        <div class="row menubotones">
            <img src="Resources/image/07Nuevo.png" alt="" style="margin-left: 40%;"/>
            <img src="Resources/image/08Guardar.png" alt="" onclick="guardarUsuario();"/>
            <img src="Resources/image/09Eliminar.png" alt=""/>
            <img src="Resources/image/16ayuda.png" alt=""/>
        </div>
        <form id="formNUsuario" class="form-horizontal" role="form" action="#" method="POST">
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Nombre" class="col-md-2 form-control-label">Nombre:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <div class="row">
               
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Correo" class="col-md-2 form-control-label">Correo Electrónico:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Correo" name="Correo" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <div class="row">
               
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Area" class="col-md-2 form-control-label">Área:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <select id="Area" name="Area" class="form-control"><option value="0">Seleccionar</option>
                            <c:forEach items="${listaAreas}" var="Area">
                                <option value="${Area.getIdtblarea()}">${Area.getNombre()}</option>
                            </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                </div>
            </div>
         <div class="row">
               
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Estado" class="col-md-2 form-control-label">Estado:</label>
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default active">
                                <input type="radio" name="Estado" id="Estado" autocomplete="off" value="Activo" checked> Activo
                            </label>
                            <label class="btn btn-default">
                                <input type="radio" name="Estado" id="Estado" autocomplete="off" value="Inactivo"> Inactivo
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <div class="row">
             <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Estado" class="col-md-2 form-control-label">Acesos:</label>
                        <div >
                            <input  type="checkbox" id="WebApp" name="WebApp" >&nbsp;Web App&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                            <input  type="checkbox" id="MobileApp" name="MobileApp" >&nbsp;App Mobile
                        </div>
                    </div>
                    <hr/>
                    <h3 style="padding-left: 10%;">Agregar Perfiles:</h3>
                    <br/>            
                    <c:if test="${!empty listaPerfiles}">
                    <table  id="TablaUsuarios" class="table table-striped" style="width:70%; margin-left: 15%;">
                        <thead>
                            <tr style="text-align:center">
                                <th style="text-align:center">No.</th>
                                <th style="text-align:center">Tipo</th>
                                <th style="text-align:center">Descripción</th>
                                <th style="text-align:center">Asignar</th>  
                            </tr>
                        </thead>
                        <tbody>
                        <c:set var="contador" value="${0}" />
                        <c:forEach items="${listaPerfiles}" var="Perfil">
                            <c:set var="contador" value="${contador+1}" />
                            <tr scope="row">
                                <td>${contador}</td>
                                <td><c:out value="${Perfil.getNombreperfil()}" /></td>
                                <td><c:out value="${Perfil.getDescripcion()}" /></td>
                                <td style="text-align:center"><input type="checkbox" value="${Perfil.getIdtblperfiles()}" onclick="agregaralista(this.value, '#asignados');"/></td>                          
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </c:if>
                    <input type="hidden" name="asignados" value="${originales}" id="asignados"/>
                    <input type="hidden" name="originales" value="${originales}" id="originales"/> 
                </div>
            </div>
        </form>
        <br/>
        <br/>
        <div class="row" style="background-color: #222; border-top:1px solid #5DFDF2; min-height: 50px;">                      
        </div>        
    </div>
    <div id="creaNuevo" class="col-md-1" ></div>
</div>
        
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


