<?php
class Home extends Controller {

	public function __construct() {
		parent::Controller();
		$this->load->model("login_model");
	}

	public function index(){
		
		/* Permiso del M�dulo Home */
		$homePermission = "LEXS001";
		
		/* Arreglo que contiene todos los permisos del usuario actual, seg�n sus roles. */
		$permissions[] = null;
		
		/* Control general para mantenimiento */
		$control = "restrict";
		
		if( $this->session->userdata("loggedIn") ){
			
			/* Obtenemos todos los permisos seg�n los roles con los que est� relacionado el usuario actual */
			$permissions = $this->getUserPermissions( $this->session->userdata("loggedUserId") );
			
			/* Valores b�sicos para formar la vista del m�dulo: titulo, nombre de la vista, el script del modulo, los permisos de usuario y el tipo de usuario */
			$vars['titulo'] = ( in_array( $homePermission, $permissions ) ) ? 'Home' : 'Acceso Denegado';
			$vars['vista_contenido'] = ( in_array( $homePermission, $permissions ) ) ? 'view_home' : 'view_prohibido';
			$vars['scriptJS'] = ( in_array( $homePermission, $permissions ) ) ? 'home' : 'prohibido';
			$vars['data']['permisosUsuarioActual'] = $permissions;
			$vars['control'] = $control;
			
			/* Valores especiales para cada m�dulo en espec�fico se almacenan en el arreglo data: */
			//$vars['data']['var1'] = "ContentVar1";
			//$vars['data']['var2'] = "ContentVar2";
			//$vars['data']['var2'] = "ContentVar2";			
			
			/* Cargamos la vista general del sistema. */
			$this->load->view( 'template', $vars );
			
		}else{
			
			redirect('login', 'location' );
			
		}
			
	}
	
	public function getUserPermissions( $userId ){
	
		$roles	= $this->login_model->getRoles( $userId );
	    $permissions[]   = "0000";
		$this->session->set_userdata( "control", "restrict" );
				
		foreach( $roles as $rol ){
			
			$rolPermissions = $this->login_model->getPermissionsOf( $rol->rol_persona_id );
				
			foreach( $rolPermissions as $p ){
				$permissions[] = $p->proceso_id;
			}
					
			$userType = $this->login_model->getUserType( $rol->rol_persona_id );
				
			foreach( $userType as $t ){
				$permissionType = $t->rol_tipo_denominacion;
			}
				
			if( $permissionType == "root" ){
				$this->session->set_userdata( "control", "all" );
			}
					
			return $permissions;
		
		}		
	}

}
?>