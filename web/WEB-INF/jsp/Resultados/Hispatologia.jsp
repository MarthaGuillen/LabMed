<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Histopatología <small style="color: #9d9d9d;">&nbsp;Id: </small>
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary">Generar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
        <div class="row menubotones">
            <img src="Resources/image/01CamposConsulta2.png" alt="" style="margin-left: 28%;"/>
            <img src="Resources/image/02Consultar03.png" alt=""/>
            <img src="Resources/image/03Inicio.png" alt=""/>
            <img src="Resources/image/04Anterior.png" alt=""/>
            <img src="Resources/image/05Siguiente.png" alt=""/>
            <img src="Resources/image/06Final.png" alt=""/>
            <img src="Resources/image/07Nuevo.png" alt=""/>
            <img src="Resources/image/08Guardar.png" alt=""/>
            <img src="Resources/image/09Eliminar.png" alt=""/>
            <img src="Resources/image/16ayuda.png" alt=""/>
        </div>
        <form id="loginform" class="form-horizontal" role="form" action="#" method="POST">
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Orden1" class="col-md-3 form-control-label">Orden:</label>
                        <div class="col-md-3" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Orden1" name="Orden1" placeholder="" >
                        </div>
                        <label for="Orden2" style="padding-left: 2px; padding-right: 2px;" class="col-md-1 form-control-label">-</label>                            
                        <div class="col-md-4" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Orden2" name="Orden2" placeholder="" >
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
            <div class="row">  
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-9">
                    <div class="form-group">
                        <label for="Medico" class="col-md-2 form-control-label">Diagnóstico Clínico:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Medico" name="Medico" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Edad" class="col-md-3 form-control-label">MOR1:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Edad" name="Edad" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9">
                    <div class="form-group">
                        <label for="Medico" class="col-md-2 form-control-label">Muestra:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Medico" name="Medico" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="Edad" class="col-md-3 form-control-label">MOR2:</label>
                        <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Edad" name="Edad" placeholder="" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <hr style="border: 1px solid #C6C8CA;"/>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="FechaInforme" class="col-md-3 form-control-label">Fecha Informe:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FechaInforme" name="FechaInforme" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Firma1" class="col-md-3 form-control-label">Firma 1:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="search" class="form-control" id="Firma1" name="Firma1" placeholder="" >
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
                        <label for="FechaBiopsia" class="col-md-3 form-control-label">Fecha Biopsia:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FechaBiopsia" name="FechaBiopsia" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="Firma2" class="col-md-3 form-control-label">Firma 2:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="search" class="form-control" id="Firma2" name="Firma2" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="FechaMuestra" class="col-md-3 form-control-label">Fecha Muestra:</label>
                        <div class="col-md-7" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FechaMuestra" name="FechaMuestra" placeholder="" >
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
                            <textarea class="form-control" id="Diagnostico:" name="Diagnostico:" rows="5"></textarea>
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
</div>
