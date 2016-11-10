<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" id="TituloContenido" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Listado De Firmas  
                <div class=" pull-right control">                                   
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>    
                </h2>                
            </div>              
        </div>
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-3">
                </div>
                <div class="col-md-8">
                    <div class="form-inline">
                    <div class="form-group">
                        <label for="BuscarFirma">Buscar Firma:</label>
                        <input type="search" class="form-control" id="BuscarFirma" name="BuscarFirma" placeholder="" > 
                    </div>
                   </div>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-8">
                    <div class="form-group">
                        <table  id="TablapermisosUsuarios" style="width:70%;">
                            <tr>
                                <th>Nombre</th>
                                <th>Codigo</th>
                                <th>Estado</th>                                
                                <th width="60"></th>
                                <th width="60"></th>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Código" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Nombre" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Estado" ></td>
                                <td align="center"><img src="Resources/image/Ver.png" alt="" height="20" width="20"/>&nbsp;&nbsp;&nbsp;<img src="Resources/image/editar.png" alt="" height="20" width="20"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Código" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Nombre" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Estado" ></td>
                                <td align="center"><img src="Resources/image/Ver.png" alt="" height="20" width="20"/>&nbsp;&nbsp;&nbsp;<img src="Resources/image/editar.png" alt="" height="20" width="20"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Código" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Nombre" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Estado" ></td>
                                <td align="center"><img src="Resources/image/Ver.png" alt="" height="20" width="20"/>&nbsp;&nbsp;&nbsp;<img src="Resources/image/editar.png" alt="" height="20" width="20"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Código" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Nombre" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Estado" ></td>
                                <td align="center"><img src="Resources/image/Ver.png" alt="" height="20" width="20"/>&nbsp;&nbsp;&nbsp;<img src="Resources/image/editar.png" alt="" height="20" width="20"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Código" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Nombre" ></td>
                                <td><input type="text" class="form-control" id="Otros" name="Otros" placeholder="Estado" ></td>
                                <td align="center"><img src="Resources/image/Ver.png" alt="" height="20" width="20"/>&nbsp;&nbsp;&nbsp;<img src="Resources/image/editar.png" alt="" height="20" width="20"/></td>
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


