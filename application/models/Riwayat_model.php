<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Riwayat_model extends CI_Model {

	public function daftarRiwayat(){
		return $this->db->get('history')->result();
	}

	public function daftarHasil(){
		return $this->db->get('hasil_diagnosa')->result();
	}
	

	public function getById($id){
		return $query = $this->db->query("SELECT * FROM penyakit WHERE id='$id' ")->row_array();

	}
}
