/* Author: Gustavo Hernandez */
/* Contiene personalización de los scripts de JQuery y funciones generales del sistema */

var urlSite = "http://localhost/primaria/";
var meses = Array( "Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

//Salir del sistema
function logout(){
	$.post(urlSite+"login/salir", { accion: "logout" },function( data ) {
     	var obj = $.parseJSON(data);
		window.location = urlSite + "login";
   });
}

Array.prototype.indexOf = function(s) {
	for (var x=0;x<this.length;x++) if(this[x] == s) return x;
	return false;
}

$(document).ready(function(){
	
	$('#linkSalir').click(function(){
		logout();
	});

});