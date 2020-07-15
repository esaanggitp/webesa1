<?php
class User_model extends CI_Model {
	public function __construct()
	{
		$this->load->database();
	}
	public function all()
	{
	
		$data = $this->db->query("SELECT * from vidio1");
        return $data->result();
		
	}


}