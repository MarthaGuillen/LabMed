/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function guardarCatCitologia(){
    $('#processing-modal').modal('show');        
    var nomp = $('#NombreCatCitologia').val().trim();
    var e=0;
    var variables="";
    if(nomp===""){
        e = 1;
        document.getElementById("NombreCatCitologia").style["border-color"]="#A94442";
        variables += "- Nombre del Medico\n";
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
       enviarCatCitologia();    
    }  
}



function enviarCatCitologia(){    
    var nomp = $('#NombreCatCitologia').val().trim();
    var estado = $('input[name="Estado"]:checked').val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
            swal({
                title:'Firma  creada correctamente.',
                text: "",
                type:'success',
                confirmButtonText: 'Ok'
            }).then(function() {                
                $('#processing-modal').modal('hide');
                $('#processing-modal').modal('hide');
                cargarContenido("listaFirmas.htm","contenido");
            })
        }
    }
    alert("NombreDoc="+nomp+"&CodDoc="+code+"&Estado="+estado);
    xhttp.open("POST","NuevaFirma2.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("NombreCatCitologia="+nomp+"&Estado="+estado);
}