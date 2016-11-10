<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
         <div class="row" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Registro de Actividades
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary">Buscar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-2">
                 </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <div>
                        <label for="FechainicRepo" class="col-md-2 form-control-label" style="padding-top: 7px; padding-right: 2px;" >Fecha Inicial:</label>
                        <div class="col-md-4" style="padding-left: 2px; padding-right: 2px;">
                            <input type="date" class="form-control" id="FechaInicRepo" name="FechainicRepo" placeholder="" >
                        </div>
                        </div>
                        <div>
                            <label for="Orden2" style="padding-top: 7px;padding-center: 2px; padding-right: 2px;" class="col-md-2">Fecha Final:</label>                            
                             <div class="col-md-4" style="padding-left: 2px; padding-right: 2px;">
                                 <input type="date" class="form-control" id="FechaFinRepo" name="FechaFinRepo" placeholder="" >
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            <br/>
            <hr style="border: 1px solid #C6C8CA;"/>
            <br/>
            <div class="row">
            <div class="col-md-3">
            </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <table  id="TablaBitacora" style="width:70%;">
                            <tr>
                                <th>No.</th>
                                <th>Evento</th> 
                                <th>&nbsp;Descripción&nbsp;&nbsp;</th>
                                <th>Usuario</th>
                                <th>Fecha</th>
                                <th width="60"></th>
                                <th width="60"></th>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="1" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Evento" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Descripción" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Usuario" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Fecha" ></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="2" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Evento" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Descripción" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Usuario" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Fecha" ></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="3" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Evento" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Descripción" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Usuario" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Fecha" ></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="4" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Evento" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Descripción" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Usuario" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Fecha" ></td>
                            </tr>
                            <tr>
                               <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="5" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Evento" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Descripción" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Usuario" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Fecha" ></td>
                            </tr>
                        </table>
                    </div>
                </div>                
            </div> 
        <br/>
        <br/>
        <div class="row" style="background-color: #222; border-top:1px solid #5DFDF2; min-height: 50px;">                      
        </div>        
    </div>
    <div class="col-md-1"></div>
</div>


