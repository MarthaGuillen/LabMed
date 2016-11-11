/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function cargaPermisos(){
    $('#processing-modal').modal('show');
    var id=1;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("permisosAsignados").innerHTML = xhttp.responseText;
             $('#processing-modal').modal('hide');
        }
    }
    xhttp.open("POST", "CarPermiso.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("id=" + id);
}

function guardarPerfil(){
    var permisos=[];
    var nomp = $('#Pefil').val().trim();
    var desc = $('#Desc').val().trim();
    var bool = $("input[name='optestado']:checked").val();
       
    var e=0;
    if(nomp===""){
        e = 1;
    }
    if(desc===""){
        e = 1; 
    }
    if (e===1) {
        swal(
            'Alerta:',
            'Por favor verifique el nombre del perfil y la descripción.',
            'error'
        );
    }else{
       if($("input:checkbox:checked").length>0){
        
       var cont=0;
       $('#processing-modal').modal('show');
       $("input:checkbox:checked").each(function(){
	//cada elemento seleccionado
        var mensaje = $(this).val();
        permisos.push(mensaje);
        cont++;
        if(cont==$("input:checkbox:checked").length)
        {
            enviarPerfil(permisos.toString(),bool);
            
        }
        });
        }else{
            swal(
                'Alerta:',
                'Por favor seleccione, los perfiles que desea asignar.',
                'error'
            );
        }    
        
    }
    
    
}
function guardarCitologia()
{
                var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
            if (xhttp.readyState == 4 && xhttp.status == 200) {
                document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
                $('#processing-modal').modal('hide');
                swal({
                    title: 'Perfil creado correctamente.',
                    text: "",
                    type: 'success',
                    confirmButtonText: 'Ok'
                }).then(function() {
                    cargarContenido("ListaPerfiles.htm","contenido");
                })
            }
            }
            xhttp.open("POST", "guardarCitologia.htm", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("nombre="+nomp+"&desc="+desc+"&per="+mn+"&bol="+bool);
            deteccioncancer_, indicemaduracion_, otrosindices_,  diagnosticoclinico_, fur_,  fup_,   gravidad_,  para_, abortos_,  idtblcatcito_,  idtblfirma1_,   idtblfirma2_, otros_,  fechainforme_,  fechamuestra_,  informe_
            @RequestParam("DetCancer") boolean deteccioncancer_, @RequestParam("IndMaduracion") boolean indicemaduracion_,@RequestParam("Otros") String otrosindices_,@RequestParam("Medico") String diagnosticoclinico_,@RequestParam("FUR") String fur_,@RequestParam("FUP") String fup_,@RequestParam("TOPOG") String  gravidad_,@RequestParam("Para") String para_,@RequestParam("Abortos") int abortos_,@RequestParam("idcito") int idtblcatcito_,@RequestParam("Firma1") int idtblfirma1_, @RequestParam("Firma2") int  idtblfirma2_,@RequestParam("Otros2") String otros_,@RequestParam("FechaInforme") Date fechainforme_,@RequestParam("FechaMuestra") Date fechamuestra_,@RequestParam("DescMacro") String informe_
}

function enviarPerfil(mn,bool){
            
            var nomp = $('#Pefil').val().trim();
            var desc = $('#Desc').val().trim();
            
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
            if (xhttp.readyState == 4 && xhttp.status == 200) {
                document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
                $('#processing-modal').modal('hide');
                swal({
                    title:'Correcto:',
                    text: "Perfil creado correctamente.",
                    type: 'success',
                    confirmButtonText: 'Ok'
                }).then(function() {
                    cargarContenido("ListaPerfiles.htm","contenido");
                })
            }
            }
            xhttp.open("POST", "guardaPerfil.htm", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("nombre="+nomp+"&desc="+desc+"&per="+mn+"&bol="+bool);
}




function cargaPerfilEdita(id){
    
    
    $("#tempIdPerfil").val(id);
    $('#processing-modal').modal('show');
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("cargaPreviaPerfil").innerHTML = xhttp.responseText;
             $('#processing-modal').modal('hide');
             $('#editaper').modal('show');
        }
    }
    xhttp.open("POST", "cargaVistaPerfil.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("idp=" + id);
    
}

function estPerfilEdita(id,est){
    var estadoA = "";
    if(est==="true"){est='false';estadoA="Desactivado";}else{est='true';estadoA="Activado";}
    swal({
        title:'Alerta:',
        text: 'Desea cambiar el estado del perfil, al modo '+estadoA+'?',
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si',
        cancelButtonText: 'No'
    }).then(function() {
            $('#processing-modal').modal('show');
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (xhttp.readyState == 4 && xhttp.status == 200) {
                    document.getElementById("cargaPreviaPerfil").innerHTML = xhttp.responseText;
                     $('#processing-modal').modal('hide');
                     cargarContenido("ListaPerfiles.htm","contenido");
                }
            }
            xhttp.open("POST", "updPerfilEstado.htm", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("idp=" + id +"&bol="+est);
    });
    
}


function updateperfil(){
    var permisos=[];
    var nomp = $('#Pefil').val().trim();
    var desc = $('#Desc').val().trim();
    var bool = $("input[name='optestado']:checked").val();
       
    var e=0;
    if(nomp===""){
        e = 1;
    }
    if(desc===""){
        e = 1; 
    }
    if (e===1) {
        swal(
            'Alerta:',
            'Por favor verifique el nombre del perfil y la descripción.',
            'error'
        );
    }else{
       if($("input:checkbox:checked").length>0){
        
       var cont=0;
       $('#processing-modal').modal('show');
       $("input:checkbox:checked").each(function(){
	//cada elemento seleccionado
        var mensaje = $(this).val();
        permisos.push(mensaje);
        cont++;
        if(cont==$("input:checkbox:checked").length)
        {
            actualizaPer(permisos.toString(),bool);
            
        }
        });
        }else{
            swal(
                'Alerta',    
                'Por favor seleccione, los perfiles que desea asignar.',
                'error'
            );
        }    
        
    }
}

function actualizaPer(mn,bool){
    var idp =  $("#tempIdPerfil").val();
    var nomp = $('#Pefil').val().trim();
    var desc = $('#Desc').val().trim();

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
        document.getElementById("cargaPreviaPerfil").innerHTML = xhttp.responseText;
        swal({
            title:'Correcto:',
            text: "Perfil creado correctamente.",
            type: 'success',
            confirmButtonText: 'Ok'
        }).then(function() {
            $('#processing-modal').modal('hide');
            $('#editaper').modal('hide');
            cargarContenido("ListaPerfiles.htm","contenido");
        })
    }
    }
    xhttp.open("POST", "updPerfil.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("nombre="+nomp+"&desc="+desc+"&per="+mn+"&bol="+bool+"&idp="+idp);
}
