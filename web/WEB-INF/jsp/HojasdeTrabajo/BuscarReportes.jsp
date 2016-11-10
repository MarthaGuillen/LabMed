<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" id="TituloContenido" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Generar Informes
                    <div class=" pull-right control">                    
                        <a id="btn-login" href="#" class="btn btn-md mybtn-primary">Generar</a>                  
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
        <br/>
            <div class="row">
             <div class="col-md-6">
                     <label for="Orden1" class="col-md-8 form-control-label" style="padding-top: 7px; padding-right: 2px;" >Seleccionar Rango de Fechas:</label>
                </div>
             </div>
            <div class="row">
               
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
           <div class="row">
                 <div class="col-md-8">  <label for="Orden1" class="col-md-8 form-control-label" style="padding-top: 7px; padding-right: 2px;" >Seleccionar Tipo de Informe:</label>
                </div>
            </div>
             <div class="row">
                 <div class="col-md-2">  
                </div>
                <div class="col-md-8" >
                    <table class="col-md-8">
                        <tr>
                        <td>
                            <input type="Radio" name="InfCito" style="margin-left: 15px;"> <b>Informe Citologías</b> 
                        </td>
                        <td></td>
                        </tr>
                        <tr>
                        <td>
                            <input type="radio" name="InfHisto" style="margin-left: 15px;"> <b>Informe Biopsias</b>
                        </td>
                        <td></td>
                        </tr>
                        <tr>
                        <td>
                            <input type="radio" name="InfoEntregas" style="margin-left: 15px;"><b>Informe de Entregas</b><br>
                        </td>
                        <td>
                            <div class="form-group">
                         <label for="Sede" class="col-md-3" style="margin-top: 8px">Sede:</label>
                            <div class="col-md-8" style="padding-left: 5px">
                                <select class="form-control"><option value="Sede">Seleccionar</option></select>    
                            </div>
                         </div>
                        </td>
                        </tr>         
                    </table>
                    </div>
                </div> 
        <br/>
        <br/>
        <div class="row" style="background-color: #222; border-top:1px solid #5DFDF2; min-height: 50px;">                      
        </div>        
    </div>
    <div class="col-md-1"></div>
</div>
