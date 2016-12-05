<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <label for="Nombre" class="col-md-2 form-control-label">Nombre:</label>
                        <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="" value="${nombre}">
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Estado" class="col-md-2 form-control-label">Estado:</label>
                        <c:if test="${estado eq 'true'}">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default active">
                                    <input type="radio" name="Estado" id="Estado" autocomplete="off" value="Activo" checked> Activo
                                </label>
                                <label class="btn btn-default ">
                                    <input type="radio" name="Estado" id="Estado" autocomplete="off" value="Inactivo"> Inactivo
                                </label>
                            </div>
                        </c:if>
                        <c:if test="${estado eq 'false'}">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default ">
                                    <input type="radio" name="Estado" id="Estado" autocomplete="off" value="Activo" > Activo
                                </label>
                                <label class="btn btn-default active">
                                    <input type="radio" name="Estado" id="Estado" autocomplete="off" value="Inactivo" checked> Inactivo
                                </label>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div> 
    </body>
</html>
