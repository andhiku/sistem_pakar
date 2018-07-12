<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nilai_CF extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('Nilaicf_model'); //load model nilaicf
	}
	
	public function index()
	{
		$data['content'] = 'admin/nilai_cf/list'; 
		$data['kelompok_data'] = $this->Nilaicf_model->daftarNilaicf();
		$this->load->view('templates/admin/index', $data);
	}


	public function create()
	{
		if (isset($_POST['submit'])){
			$this->Nilaicf_model->insert();
			redirect('nilai_cf/index');
		}
		
		$data['content'] = 'admin/nilai_cf/create'; 
		$this->load->view('templates/admin/index', $data);


	}

	public function edit(){
		if (isset($_POST['submit'])){
			$this->Nilaicf_model->edit();
			redirect('nilai_cf/index');
		}

		$id=$this->uri->segment(3);
		$data['nilaicf'] = $this->Nilaicf_model->getById($id);
		$data['content'] = 'admin/nilai_cf/edit'; 
		$this->load->view('templates/admin/index', $data);
	}

	public function hapus(){
		$id=$this->uri->segment(3);
		$this->Nilaicf_model->hapus($id);
		redirect('nilai_cf/index');

	}
}
