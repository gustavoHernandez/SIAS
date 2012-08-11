<?php
class Login_model extends Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    function checkUserLogin($username,$password){
        $query = $this->db->where("USUARIO_NOMBRE",$username);
        $query = $this->db->where("USUARIO_PASSWORD",$password);
        $query = $this->db->limit(1,0);
        $query = $this->db->get("usuario");
        
        if ($query->num_rows() == 0) {
            return FALSE;
        }
        return TRUE;
    }
	function getUserId( $username ){
		$query = $this->db->where("USUARIO_NOMBRE",$username);
        $query = $this->db->limit(1,0);
        $query = $this->db->get("usuario");
        
        if ($query->num_rows() > 0) {
            $row = $query->row();
			$uidlogin = $row->usuario_id;
        }
		return $uidlogin;
	}
	function getRoles($userid){
		$sql = "SELECT rol_persona_id 
		FROM rol_persona_usuario
		WHERE usuario_id =".$this->db->escape($userid)."";
		$query = $this->db->query($sql);
        return $query->result();
	}
	function getPermissionsOf( $perrolid ){
		$sql = "SELECT P.proceso_id 
		FROM proceso AS P, proceso_rol as RPPR, rol_persona as RP
		WHERE P.proceso_id = RPPR.proceso_id 
		AND  RPPR.rol_id = RP.rol_id
		AND RP.rol_persona_id =".$this->db->escape($perrolid)."";
		$query = $this->db->query($sql);
        return $query->result();
	}
	function getUserType( $perrolid ){
		$sql = "SELECT RT.rol_tipo_denominacion
		FROM  rol_persona as RP, rol as R, rol_tipo as RT
		WHERE RP.rol_id = R.rol_id
		AND R.rol_tipo_id = RT.rol_tipo_id
		AND RP.rol_persona_id =".$this->db->escape($perrolid);
		$query = $this->db->query($sql);
        return $query->result();
	}
	function obtenerNombreUsuario( $userid ){
		
		$sql = "SELECT persona_nombres, persona_ap_paterno, persona_ap_materno
		FROM  usuario as U, rol_persona_usuario as RPU, rol_persona as RP, persona as P
		WHERE U.usuario_id = RPU.usuario_id
		AND RPU.rol_persona_id = RP.rol_persona_id
		AND RP.persona_id = P.persona_id
		AND U.usuario_id = ".$this->db->escape( $userid );
		
		$query = $this->db->query($sql);
			    
	    if( $query->num_rows() > 0 ){
	        $row = $query->row();
			$usuarionombre = $row->persona_nombres." ".$row->persona_ap_paterno;
	    }
		return $usuarionombre;
		
	}
}
?>