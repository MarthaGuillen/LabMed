<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Histopatología <small style="color: #9d9d9d;">
                        <input type="hidden" id="code" value="${codigo}">
                        <label id="codigofotohisto" class="form-control-label" >Id:<strong> ${codigo} </strong></label>
                    </small>
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary" onclick="guardarHistopatologia();">Guardar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
        <div class="row menubotones " >
            <!-- <img src="Resources/image/01CamposConsulta2.png" alt="" style="margin-left: 28%;"/>
            <img src="Resources/image/02Consultar03.png" alt=""/>
            <img src="Resources/image/03Inicio.png" alt=""/>
            <img src="Resources/image/04Anterior.png" alt=""/>
            <img src="Resources/image/05Siguiente.png" alt=""/>
            <img src="Resources/image/06Final.png" alt=""/>
            <img src="Resources/image/07Nuevo.png" alt=""/>
            <img src="Resources/image/08Guardar.png" alt=""/>
            <img src="Resources/image/09Eliminar.png" alt=""/>
            <img src="Resources/image/16ayuda.png" alt=""/>-->
        </div>
        <form id="loginform" class="form-horizontal" role="form" action="#" method="POST">
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Nofactura" class="col-md-4 form-control-label">No.Factura</label>
                        <div class="col-md-3" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Nofactura" name="Nofactura" placeholder="" >
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
                            <input type="text" class="form-control" id="Corr" name="Orden1" placeholder="" >
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
            <!-------------Campos HANSA --------------->
            <div class="row">  
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-9">
                    <div class="form-group">
                        <label for="DiagnosticoClinico" class="col-md-2 form-control-label">Diagnóstico Clínico:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="DiagnosticoClinico" name="DiagnosticoClinico" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Mor1" class="col-md-3 form-control-label">MOR1:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Mor1" name="Mor1" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9">
                    <div class="form-group">
                        <label for="Muestra" class="col-md-2 form-control-label">Muestra:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Muestra" name="Muestra" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Mor2" class="col-md-3 form-control-label">MOR2:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Mor2" name="Mor2" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Finforme" class="col-md-3 form-control-label">Fecha Informe:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="Finforme" name="Finforme" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Firma1" class="col-md-3 form-control-label">Firma 1:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                           <!-- <input type="search" class="form-control" id="Firma1" name="Firma1" placeholder="" > -->
                             <select id="Firma1" name="Firma1" class="form-control"><option value="0">Seleccionar</option>
                                <c:forEach items="${ListaFirmas}" var="Firmasmedicos">
                                <option value="${Firmasmedicos.getIdtblfirmamed()}">${Firmasmedicos.getNombre()}</option>
                            </c:forEach> 
                            </select>
                        </div>                      
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="TOPOG" class="col-md-3 form-control-label">TOPOG :</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="TOPOG" name="TOPOG" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="FBiopsia" class="col-md-3 form-control-label">Fecha Biopsia:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FBiopsia" name="FBiopsia" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Firma2" class="col-md-3 form-control-label">Firma 2:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
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
                        <label for="FMuestra" class="col-md-3 form-control-label">Fecha Muestra:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FMuestra" name="FMuestra" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>  
            <div class="row">
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="DescMacro" class="col-md-3 form-control-label">Descripción Macroscopica:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <textarea class="form-control" id="DescMacro" name="DescMacro" rows="5"></textarea>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="row">
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="DescMicro" class="col-md-3 form-control-label">Descripción Microscopica:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <textarea class="form-control" id="DescMicro" name="DescMicro" rows="5"></textarea>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="row">
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="Diagnostico:" class="col-md-3 form-control-label">Diagnóstico:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <textarea class="form-control" id="Diagnostico" name="Diagnostico:" rows="5"></textarea>
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

