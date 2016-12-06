<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>

<html>
    <body>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Pefil">Nombre:</label>
                        <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="" value="${nombreFirma}">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Desc">Codigo</label>
                        <textarea class="form-control" id="Desc" name="Desc" rows="3">${codgoFirma}</textarea>
                        
                    </div>
                </div>
            </div>            
            <div class="row">
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="CodDoc">Estado:</label>
                        <div class="form-group" style="font-size: 20px;">
                            <c:if test="${estado eq 'true'}">
                                <label class="radio-inline"><input type="radio" name="optestado" checked="checked"  value="true">Activado</label>  
                                <label class="radio-inline"><input type="radio" name="optestado" value="false">Desactivado</label>
                            </c:if>
                            <c:if test="${estado eq 'false'}">
                                <label class="radio-inline"><input type="radio" name="optestado" value="true">Activado</label>  
                                <label class="radio-inline"><input type="radio" name="optestado" checked="checked"   value="false">Desactivado</label>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>      
    </body>
</html>
