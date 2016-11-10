<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" id="TituloContenido" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12 wrapper">
                <h2 style="margin-top: 5px; color: white;">Perfiles
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary" onclick="guardarPerfil();">Guardar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
        <div class="row menubotones " style="text-align: center;">
            <a onclick="guardarPerfil();" data-toggle="tooltip" title="Guardar Perfil"><img src="Resources/image/08Guardar.png" alt=""/></a>
            <a onclick="" data-toggle="tooltip" title="Ayuda"><img src="Resources/image/16ayuda.png" alt=""/></a>
        </div>
        <form>
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Pefil" class="col-md-2 form-control-label">Nombre:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <input type="text" class="form-control" id="Pefil" name="Pefil" placeholder="" >
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
                        <label for="Desc" class="col-md-2 form-control-label">Descripción:</label>
                        <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                            <textarea class="form-control" id="Desc" name="Desc" rows="3"></textarea>
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
                        <div class="form-group" style="font-size: 20px;">
                            <label class="radio-inline"><input type="radio" name="optestado" value="true">Activado</label>
                            <label class="radio-inline"><input type="radio" name="optestado" value="false">Desactivado</label>
                        </div>
                    </div>
                    <div class="pull-right">
                    <input type="button" onclick="cargaPermisos();" class="btn btn-md btn-primary" value="Asignar permisos">
                    </div>
                </div>
                <div class="col-md-2">
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div id="permisosAsignados"></div>
                </div>
                <div class="col-md-2"></div>
            </div>
            
            
         
        </form>
        <br/>
        <br/>
        <div class="row" style="background-color: #222; border-top:1px solid #5DFDF2; min-height: 50px;">                      
        </div>        
    </div>
    <div id="creaNuevo" class="col-md-1"></div>
</div>

<!-- Static Modal -->
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


