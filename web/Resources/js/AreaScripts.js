/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function cargaInfoArea(id){
    $("#tempId").val(id);
    $('#processing-modal').modal('show');
    alert(id);
    var xhttp = new XMLHttpRequest();
     alert("2");
    xhttp.onreadystatechange = function () {
        alert("3");
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            alert("4");
            document.getElementById("cargaPreviaArea").innerHTML = xhttp.responseText;
             $('#processing-modal').modal('hide');
             $('#editaarea').modal('show');
        }
    }
    alert("5");
    xhttp.open("POST", "CargaVistaArea.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    alert(id);
    xhttp.send("idp="+id);
    
}


function guardarArea(){
    $('#processing-modal').modal('show');        
    var nomp = $('#NombreArea').val().trim();
       
    var e=0;
    var variables="";
    if(nomp===""){
        e = 1;
        document.getElementById("NombreArea").style["border-color"]="#A94442";
        variables += "- Nombre del area\n";
    }
    if (e!==0) {
        var mensaje = '<h2>Favor validar:</h2>';
        $('#processing-modal').modal('hide');
        $('#processing-modal').modal('hide');
        swal({
            title: '',
            text:  mensaje+'<p>'+variables+'</p>',
            type: 'error'
        });
    }else{
        enviarArea();    
    }  
}


function enviarArea(){    
    var nomp = $('#NombreArea').val().trim();
    var estado = $('input[name="Estado"]:checked').val();

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
            swal({
                title:'Area creada correctamente.',
                text: "",
                type:'success',
                confirmButtonText: 'Ok'
            }).then(function() {                
                $('#processing-modal').modal('hide');
                $('#processing-modal').modal('hide');
                cargarContenido("ListadoDeAreas.htm","contenido");
            })
        }
    }
    xhttp.open("POST", "NuevaArea.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("NombreArea="+nomp+"&Estado="+estado);
    
}
//
//
//function estAreaEdit(id,est){
//    var estadoA = "";
//    if(est==="true"){
//        est='false';
//        estadoA="Desactivado";
//    }else{
//        est='true';
//        estadoA="Activado"
//    ;}
//    swal({
//        title: 'Alerta!',
//        text: "Desea cambiar el estado del area, al modo "+estadoA+"?",
//        type: 'warning',
//        showCancelButton: true,
//        confirmButtonColor: '#3085d6',
//        cancelButtonColor: '#d33',
//        confirmButtonText: 'Si',
//        cancelButtonText: 'No'
//    }).then(function() {
//            $('#processing-modal').modal('show');
//            var xhttp = new XMLHttpRequest();
//            xhttp.onreadystatechange = function () {
//                if (xhttp.readyState == 4 && xhttp.status == 200) {
//                    $('#processing-modal').modal('hide');
//                    cargarContenido("ListadoDeAreas.htm","contenido");
//                }
//            }
//            xhttp.open("POST", "upAreaEstado.htm", true);
//            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//            xhttp.send("idp=" + id +"&bol="+est);
//    });
//    
//}
//
