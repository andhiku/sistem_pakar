<?php 
$listPenyakit=$this->gejala_penyakit_model->get_by_gejala($gejala);
$penyakit = [];
$i=0;
foreach($listPenyakit->result() as $value){
$listGejala=$this->gejala_penyakit_model->get_gejala_by_penyakit($value->penyakit_id,$gejala);
$combineCFmb=0;
$CFBeforemd=0;
$j=0;
foreach($listGejala->result() as $value2){
$j++;
if($j==1)
$combineCFmb=$value2->mb;
$combineCFmd=$value2->md;
else
$combineCFmb =$combineCFmb+ ($value2->mb * (1 - $combineCFmb));
$combineCFmd =$combineCFmd + ($value2->mb * (1 - $combineCFmd));
$combinehasil =$combineCFmb - =$combineCFmd;
}
if($combineCF>=0.5)
{
$penyakit[$i]=array('kode'=>$value->kode,							'nama'=>$value->nama,							'kepercayaan'=>$combineCF*100,						'keterangan'=>$value->keterangan);
			$i++;
	}
	}
	function cmp($a, $b)
	{
	return($a["kepercayaan"] > $b["kepercayaan"]) ? -1 : 1;
	}
	usort($penyakit, "cmp");
	$data["listPenyakit"] = $penyakit;
	$this->load->view("home/diagnosa/index", $data);
	}
	}
 ?>