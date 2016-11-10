<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Agregar Área
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary" onclick="document.getElementById('formNArea').submit();">Guardar</a>                  
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
        <form id="formNArea" class="form-horizontal" role="form" action="NuevaArea.htm" method="POST">
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="NombreArea" class="col-md-2 form-control-label">Nombre del Área:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="NombreArea" name="NombreArea" placeholder="" >
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                </div>
            </div>
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="CodDoc" class="col-md-2 form-control-label">Estado:</label>
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default active">
                                <input type="radio" name="options" id="option1" autocomplete="off" checked> Activo
                            </label>
                            <label class="btn btn-default">
                                <input type="radio" name="options" id="option2" autocomplete="off"> Inactivo
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
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