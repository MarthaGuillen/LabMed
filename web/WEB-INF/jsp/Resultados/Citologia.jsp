
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div class="row" style="font-family: ">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Citología
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary" onclick="guardarCitologia();" >Generar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
         <div class="row menubotones " style="text-align: center;">
            <a onclick="guardarCitologia();" data-toggle="tooltip" title="Guardar Perfil"><img src="Resources/image/08Guardar.png" alt=""/></a>
            <a onclick="" data-toggle="tooltip" title="Ayuda"><img src="Resources/image/16ayuda.png" alt=""/></a>
        </div>
        <form id="CitologiaForm" class="form-horizontal" role="form" action="#" method="POST">
            <div class="row">
                <br/>
                <br/>
                <!-- campos hansa -->
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Factura" class="col-md-4 form-control-label">No.Factura:</label>
                        <div class="col-md-3" style="padding-left: 2px; padding-right: 2px;">
                           
                            <input type="text" class="form-control" id="Factura" name="Factura" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Paciente" class="col-md-2 form-control-label">Paciente:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Paciente" name="Paciente" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Edad" class="col-md-3 form-control-label">Edad:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Edad" name="Edad" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Corr" class="col-md-3 form-control-label">Corr:</label>
                        <div class="col-md-8" style="padding-left: 2px; padding-right: 2px;">
                            <input type="email" class="form-control" id="Corr" name="Orden1"  placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Direccion" class="col-md-2 form-control-label">Dirección:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Direccion" name="Direccion" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Sexo" class="col-md-3 form-control-label">Sexo:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Sexo" name="Sexo" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Medico" class="col-md-2 form-control-label">Médico:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Medico" name="Medico" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                </div>
            </div>
            <!-- campos hansa -->
            <div class="row">
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-4">
                    <div class="form-group">
                        <div style="padding-left: 15px; padding-right: 2px;">
                            <input type="checkbox" id="DetCancer"  name="DetCancer" style="margin-left: 5px;"> <b>Detección del Cancer</b>
                         
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div style="padding-left: 2px; padding-right: 2px;">
                            <input type="checkbox" id="IndMaduracion" name="IndMaduracion"> <b>Indice de Maduración</b>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Otros" class="col-md-3 form-control-label">Otros:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Otros" name="Otros" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">  
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="Medico" class="col-md-2 form-control-label">Diagnóstico Clínico:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Diagnostico" name="Diagnostico" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="FUR" class="col-md-3 form-control-label">F.U.R.:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="FUR" name="FUR" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="FUP" class="col-md-3 form-control-label">F.U.P:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="texto" class="form-control" id="FUP" name="FUP" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="TOPOG" class="col-md-4 form-control-label">Gravidad :</label>
                        <div class="col-md-5" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="TOPOG" name="TOPOG" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Para" class="col-md-3 form-control-label">Para:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Para" name="Para" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Abortos" class="col-md-3 form-control-label">Abortos:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="number" class="form-control" id="Abortos" name="Abortos" placeholder="" value ="0" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="idcito" class="col-md-3 form-control-label">ID Cito:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <select id="idcatcito" name="idcatcito" class="form-control"><option value="0">Seleccionar</option>
                            <c:forEach items="${ListaCatCito}" var="CatCitologia">
                                <option value="${CatCitologia.getIdtblcatcitologias()}">${CatCitologia.getNombre()}</option>
                            </c:forEach>                            
                            </select>
                          </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Firma1" class="col-md-3 form-control-label">Firma 1:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <select id="Firma1" name="Firma1" class="form-control"><option value="0">Seleccionar</option>
                            <c:forEach items="${ListaFirmas}" var="Firmasmedicos">
                                <option value="${Firmasmedicos.getIdtblfirmamed()}">${Firmasmedicos.getNombre()}</option>
                            </c:forEach>                            
                            </select>
                            <!--<input type="search" class="form-control" id="Firma1" name="Firma1" placeholder="" >-->
                        </div>
                    </div>                    
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="FechaInforme" class="col-md-3 form-control-label">Fecha Informe:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FechaInforme" name="FechaInforme" placeholder=""  >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Otros2" class="col-md-3 form-control-label">Otros:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Otros2" name="Otros2" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Firma2" class="col-md-3 form-control-label">Firma 2:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <!-- <input type="search" class="form-control" id="Firma2" name="Firma2" placeholder="" >-->
                            <select id="Firma2" name="Firma2" class="form-control"><option value="0">Seleccionar</option>
                                <c:forEach items="${ListaFirmas}" var="Firmasmedicos">
                                <option value="${Firmasmedicos.getIdtblfirmamed()}">${Firmasmedicos.getNombre()}</option>
                            </c:forEach> 
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Fmuestra" class="col-md-3 form-control-label">Fecha Muestra:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                             <input type="date" class="form-control" id="Fmuestra" name="Fmuestra" placeholder="" value >
                        </div>
                    </div>
                </div>
            </div>  
            <div class="row">
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="DescMacro" class="col-md-3 form-control-label">Informe:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <textarea class="form-control" id="DescMacro" name="DescMacro" rows="5"></textarea>
                        </div>
                    </div>
                </div>                
            </div>
        </form>
        <br/>
        <br/> 
        <div class="row" style="background-color: #222; border-top:1px solid #5DFDF2; min-height: 50px;">                      
        </div>        
    </div>
    <div class="col-md-1"></div>
    <div id="creaNuevo" class="col-md-1"></div>
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
