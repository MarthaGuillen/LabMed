<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <div class="row" id="TituloContenido" style="background-color: #222; border-bottom:1px solid #5DFDF2;">
            <div class="col-md-12">
                <h2 style="margin-top: 5px; color: white;">Lista Perfiles  
                    <div class=" pull-right control">                               
                        <a id="btn-login" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-md btn-danger">Salir</a>                    
                    </div>
                </h2>                
            </div>              
        </div>
            <div class="row">
                <br/>
                <br/>
                <div class="col-md-1">
                </div>
                <div class="col-md-10">
                    <input type="hidden" id="tempIdPerfil">                  
                        <div id="creaNuevo" class="table-responsive"> 
                            <c:set var="valida" value="${fn:length(idp)}" />
                            <c:if test="${valida > 0}"> 
                            <br>
                            
                           <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                              <thead>
					<tr>
						<th>No.</th>
						<th>Perfil</th>
                                                <th>Descripción</th>
                                                <th>Estado</th>
                                                <th>Editar</th>
                                                
					</tr>
				</thead>
				
				<tbody>
                                    <c:forEach var="i" begin="0" end="${fn:length(idp)-1}">
                                    <c:set var="contador" value="${i+1}" />
					<tr>
						<td>${contador}</td>
						<td>${nomperf[i]}</td>
						<td>${desL[i]}</td>
                                                <td align="center"><c:if test="${estL[i] eq 'false'}">
                                                        <a onclick="estPerfilEdita('${idp[i]}','${estL[i]}');" style="cursor:pointer;" data-toggle="tooltip" data-placement="bottom" title="Activar Perfil"><img src="Resources/image/error.png" alt="" height="20" width="20"/></a>
                                                    </c:if>
                                                    <c:if test="${estL[i] eq 'true'}">
                                                        <a onclick="estPerfilEdita('${idp[i]}','${estL[i]}');" style="cursor:pointer;" data-toggle="tooltip" data-placement="bottom" title="Desactivar Perfil"><img src="Resources/image/check.png" alt="" height="20" width="20"/></a>
                                                    </c:if>
                                                </td>   
                                                <td align="center"><a style="cursor:pointer;" onclick="cargaPerfilEdita('${idp[i]}');"><img src="Resources/image/Ver.png" alt="" height="20" width="20"/></a></td>   
					</tr>
                                    </c:forEach>	
				</tbody>
                           </table>
                           </c:if>
                        </div>
                </div>
                <div class="col-md-1">
                </div>                                
            </div>
            <br/>
            <br/>
            <div class="col-md-3">
            </div>
              
        <br/>
        <br/>
        <div class="row" style="background-color: #222; border-top:1px solid #5DFDF2; min-height: 50px;">                      
        </div>        
    </div>
    <div class="col-md-1"></div>
</div>

                            
 <div class="modal fade" id="editaper" role="dialog"  data-backdrop="static" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Actualizar perfil</h4>
        </div>
          <div class="modal-body">
              <div id="cargaPreviaPerfil"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="updateperfil();">Actualizar perfil</button>  
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
    </div>                                 
 <div class="modal fade" id="desacper" role="dialog"  data-backdrop="static" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"> perfil</h4>
        </div>
          <div class="modal-body" style="height: 360px; overflow-y: auto;">
              <div id="cargaPreviaPerfil"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="updateperfil();">Actualizar perfil</button>  
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
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