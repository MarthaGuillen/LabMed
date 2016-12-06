<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            </div>
            <br/>
            <br/>
            <div class="col-md-1">
            </div>
            <div class="row">
                <div class="col-md-10">
                    <div class="form-group">
                       <c:if test="${!empty ListaFirmas}">
                        <table  id="TablaListaFirmas" class="table table-striped table-bordered"  cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th style="text-align:center">No.</th>
                                    <th style="text-align:center">Nombre</th>
                                    <th style="text-align:center">Código</th>
                                    <th style="text-align:center">Estado</th>                                  
                                    <th style="text-align:center">Editar</th>
                                </tr>
                            </thead>
                           <tbody>
                            <c:set var="contador" value="${0}" />
                            <c:forEach items="${ListaFirmas}" var="Firmas">
                                <c:set var="contador" value="${contador+1}" />
                                 <tr  scope="row">
                                    <td>${contador}</td>
                                    <td><c:out value="${Firmas.getNombre()}" /></td>
                                    <td><c:out value="${Firmas.getCodigo()}" /></td>
                                    <c:if test="${Firmas.isEstado()}">
                                        <td align="center"><img src="Resources/image/desactivar.png" alt="" width="40" onclick="estFirmasEdit('${Firmas.getIdtblfirmamed()}','${Firmas.isEstado()}');" style="cursor:pointer;"/></td>
                                    </c:if>
                                    <c:if test="${!Firmas.isEstado()}">
                                        <td align="center"><img src="Resources/image/activar.png" alt="" width="40" onclick="estFirmasEdit('${Firmas.getIdtblfirmamed()}','${Firmas.isEstado()}');" style="cursor:pointer;"/></td>
                                    </c:if>
                                    <td align="center"><img src="Resources/image/Ver.png" style="cursor:pointer;" onclick="cargaInfoFirma(${Firmas.getIdtblfirmamed()})" alt="" height="20" width="20"/></td>                      
                                </tr>   
                            </c:forEach>    
                            </tbody>
                        </table>
                        </c:if>
                       <input type="hidden" id="tempId">
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


<div class="modal fade" id="editafirma" role="dialog"  data-backdrop="static" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Actualizar Firma</h4>
        </div>
          <div class="modal-body">
              <div id="cargaPreviaArea"></div>
        </div>
        <div class="modal-footer">
          <!<button type="button" class="btn btn-primary" onclick="updateperfil();">Actualizar perfil</button>  
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
    </div> 





<div class="modal fade" id="editfirma" role="dialog"  data-backdrop="static" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Actualizar Firma</h4>
        </div>
          <div class="modal-body">
              <div id="cargaPreviaFirma"></div>
        </div>
        <div class="modal-footer">
         <!-- <button type="button" class="btn btn-primary" onclick="updateUsuario();">Actualizar Area</button>-->  
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
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



