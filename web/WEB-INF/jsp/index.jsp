<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PIF Patologia</title>
        <link href="Resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="Resources/css/BaseStyle.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="container"> 
            <div id="loginbox" class="mainbox col-md-2 col-md-offset-4 col-sm-6 col-sm-offset-4" style="margin-left: 31%"> 
                <img src="Resources/image/Logo.jpg" alt="" width="420"/>   
            </div>
            <div id="loginbox" class="mainbox col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-4"> 
                <div class="panel panel-info" style = "border-color: #222222; background-color:#222222;" >
                    <div class="panel-heading" style = "background-color:#222222; border-color: #222222; color: white; font-weight: bold; text-align: center;">
                        <div class="panel-title"><span class="glyphicon glyphicon-info-sign pull-right schooltooltip" aria-hidden="true" style="color: white;" data-toggle="tooltip" title="¿Necesita ayuda?"></span><br/><h1 class="display-4">PIF Patología <br/><small>Inicio de Sesión</small></h1></div>
                    </div>  
                    <div class="panel-body">
                        <form id="loginform" class="form-horizontal" role="form" action="inicio.htm" method="POST">
                            <div style="margin-bottom: 5px" class="input-group">
                                <span class="input-group-addon"><i id="iconouser" class="glyphicon glyphicon-user" style="color: black;"></i></span>
                                <input id="login-username" type="text" class="form-control schooltooltip" name="usernamelog" placeholder="Nombre de usuario" data-toggle="tooltip" title="Usuario">                                        
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i id="iconopassw" class="glyphicon glyphicon-lock" style="color: black;"></i></span>
                                <input id="login-password" type="password" class="form-control schooltooltip" name="passwordlog" placeholder="Contraseña" data-toggle="tooltip" title="Ingresar contraseña">
                            </div>
                            <div style="margin-top:15px" class="form-group">
                                <div class="col-sm-12 controls">
                                    <a id="btn-login" href="principal.htm" class="btn btn-lg btn-block mybtn-primary raised">Ingresar</a>     
                                    <br/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        <a href="#" onClick="$('#loginbox').hide(); $('#requestPassword').show()" class="btn btn-md btn-danger pull-right">
                                        ¿Olvido contraseña?
                                        </a>                                    
                                    </div>
                                </div>
                            </div>    
                        </form> 
                    </div>                     
                </div>
            </div>
            <div id="requestPassword" style="display:none; margin-top:15%" class="mainbox col-md-4 col-md-offset-4 col-sm-5 col-sm-offset-4">
                <div class="panel panel-info" style = "border-color: #222222; background-color:#222222;">
                    <div class="panel-heading" style = "background-color:#222222; border-color: #222222; color: white; font-weight: bold;">
                        <div class="panel-title"><span class="glyphicon glyphicon-info-sign pull-right schooltooltip" aria-hidden="true" style="color: #1EC729;" data-toggle="tooltip" title="¿Necesitas ayuda?"></span><h1 class="display-4">PIF Patologia <small>Recuperar contraseña</small></h1></div>
                    </div>  
                    <div style="padding-top:30px" class="panel-body" >
                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-6"></div>
                        <form id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name="username" placeholder="Ingresa tu correo">                                        
                            </div>
                            <div style="margin-top:15px" class="form-group">
                                <div class="col-sm-12 controls">
                                    <a id="btn-login" href="#" class="btn btn-lg btn-primary btn-block">Solicitar Contraseña</a>     
                                    <br/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        <a href="#" onClick="$('#requestPassword').hide(); $('#loginbox').show()" class="btn btn-md btn-danger pull-right">
                                        Cancelar
                                        </a>
                                    </div>
                                </div>
                            </div>    
                        </form> 
                    </div>                     
                </div> 
            </div>    
        </div>
        <script src="Resources/js/jquery-1.12.4.min.js" type="text/javascript"></script>
        <script src="Resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
    
</html>