<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Id Citologías
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary" onclick="guardarCatCitologia();">Guardar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
        <div class="row menubotones">
            <img src="Resources/image/07Nuevo.png" alt="" style="margin-left: 40%;"/>
            <img src="Resources/image/08Guardar.png" alt="" onclick="guardarArea();"/>
            <img src="Resources/image/09Eliminar.png" alt=""/>
            <img src="Resources/image/16ayuda.png" alt=""/>
        </div>
        <form id="loginform" class="form-horizontal" role="form" action="#" method="POST">
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="NombreCatCitologia" class="col-md-2 form-control-label">Identificador:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="NombreCatCitologia" name="NombreCatCitologia" placeholder="" >
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