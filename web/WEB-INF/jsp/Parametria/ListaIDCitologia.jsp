<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" id="TituloContenido" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Lista ID Citología
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
                        <c:if test="${!empty listacatcitologia}">
                         <table  id="TablaCatCitologia"  style="font-family:Georgia" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th style="text-align:center">No.</th>
                                    <th style="text-align:center">Nombre</th>
                                    <th style="text-align:center">Estado</th>                                  
                                    <th style="text-align:center">Editar</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:set var="contador" value="${0}" />
                            <c:forEach items="${listacatcitologia}" var="Catcitologia">
                                <c:set var="contador" value="${contador+1}" />
                                <tr  scope="row">
                                    <td>${contador}</td>
                                    <td><c:out value="${Catcitologia.getNombre()}" /></td>
                                    <c:if test="${Catcitologia.isEstado()}">
                                        <td align="center"><img src="Resources/image/desactivar.png" alt="" width="40" onclick="estCatCitologoEdit('${Catcitologia.getIdtblcatcitologias()}','${Catcitologia.isEstado()}');" style="cursor:pointer;"/></td>
                                    </c:if>
                                    <c:if test="${!Catcitologia.isEstado()}">
                                        <td align="center"><img src="Resources/image/activar.png" alt="" width="40" onclick="estCatCitologoEdit('${Catcitologia.getIdtblcatcitologias()}','${Catcitologia.isEstado()}');" style="cursor:pointer;"/></td>
                                    </c:if>
                                    <td align="center"><img src="Resources/image/Ver.png" style="cursor:pointer;" onclick="cargaInfoCatCitologia(${Catcitologia.getIdtblcatcitologias()})" alt="" height="30" width="30"/></td>                       
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
<div class="modal fade" id="editcatcilotogia" role="dialog"  data-backdrop="static" aria-hidden="true" data-toggle="modal">
    <div class="modal-dialog modal-lg" >
        <div class="modal-content" >
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="font-weight:bold;" >Actualizar Area</h4>
        </div>
          <div class="modal-body" style="height:200px; overflow-y: auto;" >
              <div id="cargaPreviaCatCitologia"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="updateCatCitologia();">Actualizar Registro</button>  
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
    </div>  
<div id="tempId">
    
   
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

