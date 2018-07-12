<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Regist_model extends CI_Model {

	
	public function insert(){
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		$nama = $this->input->post('nama');
		$email = $this->input->post('email');
	
	$data = array(
					'username'=>$username,
					'password'=>$password,
					'nama'=>$nama,
					'email'=>$email,
			);
	$this->db->insert('user', $data);
	
	}
}
