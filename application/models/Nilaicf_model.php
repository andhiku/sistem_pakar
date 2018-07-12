<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nilaicf_model extends CI_Model {

	public function daftarNilaicf(){
		// return $this->db->query("SELECT * FROM gejala_penyakit JOIN penyakit on penyakit.penyakit_id = gejala_penyakit.id ")->result();
		// return $this->db->get("gejala_penyakit")->result();

		return $this->db->select('*, gejala_penyakit.id AS gpid ')
						->from('gejala_penyakit')
						->join('gejala', 'gejala.id = gejala_penyakit.gejala_id ')
						->join('penyakit', 'penyakit.id = gejala_penyakit.penyakit_id ')
						->get()
						->result_array();
	}
	
	public function insert(){
		$gejala_id = $this->input->post('gejala_id');
		$penyakit_id = $this->input->post('penyakit_id');
		$md = $this->input->post('md');
		$mb = $this->input->post('mb');
	
		$data = array(
					'gejala_id'=>$gejala_id,
					'penyakit_id'=>$penyakit_id,
					'md'=>$md,
					'mb'=>$mb,
				);
		$this->db->insert('gejala_penyakit', $data);
	
	}

	public function getById($id){
		return $query = $this->db->query("SELECT * FROM gejala_penyakit WHERE id='$id' ")->row_array();

	}

	public function edit(){
		$id = $this->input->post('id');
		$gejala_id = $this->input->post('gejala_id');
		$penyakit_id = $this->input->post('penyakit_id');
		$md = $this->input->post('md');
		$mb = $this->input->post('mb');

		$data = array(
					'gejala_id'=>$gejala_id,
					'penyakit_id'=>$penyakit_id,
					'md'=>$md,'mb'=>$mb,
		);
		$this->db->where('id',$id);
		$this->db->update('gejala_penyakit', $data);
	}

	public function hapus($id){
		$this->db->where('id', $id);
		$this->db->delete('gejala_penyakit');
	}

	public function getlistnilaicf()
	{
		// return $this->db->get('gejala');

		return $this->db->select('*, gejala_penyakit.id AS gpid ')
						->from('gejala_penyakit')
						->join('gejala', 'gejala.id = gejala_penyakit.gejala_id ')
						->join('penyakit', 'penyakit.id = gejala_penyakit.penyakit_id ')
						->get()
						->result_array();
	}
}
