<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title><?= $titulo ?></title>
    <link type="text/css" href="<?php echo base_url(); ?>system/application/views/css/menu.css" rel="stylesheet" />
    
    <script type="text/javascript" src="<?php echo base_url(); ?>system/application/views/js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>system/application/views/js/menu.js"></script>
</head>
<body>



<style type="text/css">

body {
background-color:	#fff;
font-family:		Lucida Grande, Verdana, Sans-serif;
font-size:			12px;
color:				#000;
}

#content  {
border:				#999 1px solid;
background-color:	#fff;
padding:			20px 20px 12px 20px;
}

h1 {
font-weight:		normal;
font-size:			14px;
color:				#990000;
margin: 			0 0 4px 0;
}


div#menu { margin:5px auto; }
div#copyright {
    font:11px 'Trebuchet MS';
    color:#222;
    text-indent:30px;
    padding:40px 0 0 0;
}
div#copyright a { color:#eee; }
div#copyright a:hover { color:#222; }
</style>
        
                
        
        	
        
        
        
        	<div style="margin-bottom:10px;" align="center">
                <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>system/application/views/images/lapiz.png" /></a>
                <p>Sistema Integral de Administraci&oacute;n Escolar.</p>
            </div>
            
                        

                <div id="menu">
                    <ul class="menu">
                    	<? if ( in_array("RHEA001", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        	<li>
                                
                                <a href="<?php echo base_url(); ?>me" class="parent">
                                <span>Mi Despacho</span></a>
                                <? if ( in_array("RHEA014", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                                    <div>
                                        <ul>
                                            <li><a href="<?php echo base_url(); ?>usuarios"><span>Usuarios</span></a></li>
                                        </ul>
                                    </div>
                                <? } ?>
                            </li>
                        <? } ?>
                        <? if ( in_array("RHEA011", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        	<li id="M1"><a href="<?php echo base_url(); ?>clientes"><span>Clientes</span></a></li>
                        <? } ?>    
                        <? if ( in_array("LEXS001", $data['permisosUsuarioActual'] ) ) { ?>
                       		<li id="M2">
                            	<a href="<?php echo base_url(); ?>asuntos"><span>Asuntos</span></a>
                            	<? if ( in_array("LEXS011", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                                    <div>
                                        <ul>
                                            <? if ( in_array("LEXS011", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                                                <li id="M3"><a href="<?php echo base_url(); ?>litigios"><span>Litigios</span></a></li>
                                            <? } ?>
                                            <? if ( in_array("LEXS011", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                                                <li id="M4"><a href="<?php echo base_url(); ?>asuntos"><span>Contratos</span></a></li>
                                            <? } ?>
                                            <li>
                                            	<a href="<?php echo base_url(); ?>asuntos"><span>Corporativo</span></a>
                                                <div>
                                                    <ul>
                                                    	<? if ( in_array("LEXS015", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>	
                                                            <li id="M5"><a href="<?php echo base_url(); ?>asambleas"><span>Asambleas</span></a></li>
                                                        <? } ?>
                                                        <? if ( in_array("LEXS019", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>	
                                                            <li id="M8"><a href="<?php echo base_url(); ?>poderes"><span>Poderes</span></a></li>
                                                        <? } ?>	
                                                        <? if ( in_array("LEXS019", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>	
                                                            <li id="M9"><a href=""><span>Sociedades</span></a></li>
                                                        <? } ?>	
                                                    </ul>
                                                </div>
                                            </li>
                                            <? if ( in_array("LEXS032", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>	
                                                <li id="M10"><a href="<?php echo base_url(); ?>tipos"><span>Tipos de Asuntos</span></a></li>
                                            <? } ?>	
                                        </ul>
                                    </div>
                                <? } ?>
                            </li>
                        <? } ?>
                        <? if ( in_array("LEXS023", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        	<li id="M6"><a href="<?php echo base_url(); ?>controlhoras"><span>Control de Horas</span></a></li>
                        <? } ?>
                        <? if ( in_array("LEXS039", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        	<li id="M8"><a href="<?php echo base_url(); ?>facultades"><span>Facultades</span></a></li>
                        <? } ?>
                        <? if ( in_array("LEXS028", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        	<li id="M7" class="last">
                            	<a href="<?php echo base_url(); ?>templates"><span>Templates</span></a>
                                <? if ( in_array("LEXS035", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                                    <div>
                                        <ul>
                                            <li><a href="<?php echo base_url(); ?>categorias"><span>Categorias</span></a></li>
                                        </ul>
                                    </div>
                                <? } ?>
                            </li>
                		<? } ?>
                    </ul>
                </div>
            </div>
        </div>
    
        <div id="main" role="main" class="<?= $scriptJS ?> sectionAdmin" style="height:400px;">
        
			<?php $this->load->view( $vista_contenido, $data ); ?>
           
                       
        </div>
    	
        <div id="footer" class="sectionAdmin" align=center>
            
            <div id="divNavFoot" class="centrado">
            	
                <span id="footImgReawaken" class="derecha">
                	Sistema Integral de Administraci&oacute;n Escolar.
                </span>
                <div id="divDerechos"><strong>Derechos Reservados</strong></div>
            	<div id="linksFoot">
                	<? if ( in_array("RHEA001", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        <span><a href="<?php echo base_url(); ?>me"><span>Mi Despacho</span></a></span>
                    <? } ?>
                    <? if ( in_array("RHEA011", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        <span><a href="<?php echo base_url(); ?>clientes"><span>Clientes</span></a></span>
                    <? } ?>
					<? if ( in_array("LEXS001", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                        <span><a href="<?php echo base_url(); ?>asuntos"><span>Asuntos</span></a></span>
                    <? } ?>
					<? if ( in_array("LEXS011", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>    
                        <span><a href="<?php echo base_url(); ?>litigios"><span>Litigios</span></a></span>
                    <? } ?>
					<? if ( in_array("LEXS015", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>    
                        <span><a href="<?php echo base_url(); ?>asambleas"><span>Asambleas</span></a></span>
                    <? } ?>
                    <? if ( in_array("LEXS019", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>    
                        <span><a href="<?php echo base_url(); ?>poderes"><span>Poderes</span></a></span>
                    <? } ?>
					<? if ( in_array("LEXS023", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>   
                        <span><a href="<?php echo base_url(); ?>controlhoras"><span>Control de Horas</span></a></span>
                    <? } ?>
                    <? if ( in_array("LEXS039", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>
                    	<span><a href="<?php echo base_url(); ?>facultades"><span>Facultades</span></a></span>
                    <? } ?>
					<? if ( in_array("LEXS028", $data['permisosUsuarioActual'] ) || $control == "all" ) { ?>   
                        <span><a href="<?php echo base_url(); ?>templates"><span>Templates</span></a></span>
                	<? } ?>
                </div>
                
            </div>
        </div>
    
  <div id="copyright" style="display:none;">Copyright &copy; 2012 <a href="http://apycom.com/">Apycom jQuery Menus</a></div>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

</body>
</html>