/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validarCitologia(){
   
    var deteccioncancer_ = $('#DetCancer').val(); 
    var indicemaduracion_ = $('#IndMaduracion').val().trim();
    var otrosindices_ = $('Otros').val().trim();
    var diagnosticoclinico_ = $('#Medico').val();
    var fur_ = $('#FUR').val().trim();
    var fup_ = $('#FUP').val();
    var gravidad_ = $('#TOPOG').val().trim();
    var para_ = $('#Para').val();
    var abortos_ = $('#Abortos').val().trim();
    var idtblcatcito_ = $('#idcito').val();
    var idtblfirma1_ = $('#Firma1').val();
    var  otros_= $('#Otros2').val().trim();
    var fechainforme_ = $('#FechaInforme').val();
    var  fechamuestra_= $('#FechaMuestra').val().trim();
    var informe_ = $('#DescMacro').val();
           
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

function guardarTemporal(){

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
            swal({
                title: 'Citologia ingresada correctamente.',
                text: "",
                type: 'success',
                confirmButtonText: 'Ok'
            }).then(function() {                
               
                cargarContenido("principal.htm","contenido");
            })
        }
   
    xhttp.open("POST", "guardaCitologia.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    
}












//{
//                var xhttp = new XMLHttpRequest();
//            xhttp.onreadystatechange = function() {
//            if (xhttp.readyState == 4 && xhttp.status == 200) {
//                document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
//                $('#processing-modal').modal('hide');
//                swal({
//                    title: 'Perfil creado correctamente.',
//                    text: "",
//                    type: 'success',
//                    confirmButtonText: 'Ok'
//                }).then(function() {
//                    cargarContenido("ListaPerfiles.htm","contenido");
//                })
//            }
//            }
//            xhttp.open("POST", "guardarCitologia.htm", true);
//            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//            xhttp.send("nombre="+nomp+"&desc="+desc+"&per="+mn+"&bol="+bool);
//            deteccioncancer_, indicemaduracion_, otrosindices_,  diagnosticoclinico_, fur_,  fup_,   gravidad_,  para_, abortos_,  idtblcatcito_,  idtblfirma1_,   idtblfirma2_, otros_,  fechainforme_,  fechamuestra_,  informe_
//           // @RequestParam("DetCancer") boolean deteccioncancer_, @RequestParam("IndMaduracion") boolean indicemaduracion_,@RequestParam("Otros") String otrosindices_,@RequestParam("Medico") String diagnosticoclinico_,@RequestParam("FUR") String fur_,@RequestParam("FUP") String fup_,@RequestParam("TOPOG") String  gravidad_,@RequestParam("Para") String para_,@RequestParam("Abortos") int abortos_,@RequestParam("idcito") int idtblcatcito_,@RequestParam("Firma1") int idtblfirma1_, @RequestParam("Firma2") int  idtblfirma2_,@RequestParam("Otros2") String otros_,@RequestParam("FechaInforme") Date fechainforme_,@RequestParam("FechaMuestra") Date fechamuestra_,@RequestParam("DescMacro") String informe_
//}









//
//function guardarCitologia()
//{
//                var xhttp = new XMLHttpRequest();
//            xhttp.onreadystatechange = function() {
//            if (xhttp.readyState == 4 && xhttp.status == 200) {
//                document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
//                $('#processing-modal').modal('hide');
//                swal({
//                    title: 'Perfil creado correctamente.',
//                    text: "",
//                    type: 'success',
//                    confirmButtonText: 'Ok'
//                }).then(function() {
//                    cargarContenido("ListaPerfiles.htm","contenido");
//                })
//            }
//            }
//            xhttp.open("POST", "guardarCitologia.htm", true);
//            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//            xhttp.send("nombre="+nomp+"&desc="+desc+"&per="+mn+"&bol="+bool);
//            deteccioncancer_, indicemaduracion_, otrosindices_,  diagnosticoclinico_, fur_,  fup_,   gravidad_,  para_, abortos_,  idtblcatcito_,  idtblfirma1_,   idtblfirma2_, otros_,  fechainforme_,  fechamuestra_,  informe_
//           // @RequestParam("DetCancer") boolean deteccioncancer_, @RequestParam("IndMaduracion") boolean indicemaduracion_,@RequestParam("Otros") String otrosindices_,@RequestParam("Medico") String diagnosticoclinico_,@RequestParam("FUR") String fur_,@RequestParam("FUP") String fup_,@RequestParam("TOPOG") String  gravidad_,@RequestParam("Para") String para_,@RequestParam("Abortos") int abortos_,@RequestParam("idcito") int idtblcatcito_,@RequestParam("Firma1") int idtblfirma1_, @RequestParam("Firma2") int  idtblfirma2_,@RequestParam("Otros2") String otros_,@RequestParam("FechaInforme") Date fechainforme_,@RequestParam("FechaMuestra") Date fechamuestra_,@RequestParam("DescMacro") String informe_
//}