<?php 
if($this->session->userdata('is_login') == TRUE && $this->session->userdata('level') == 'pasien'){
?>
<section id="kontak" class="call-to-action-area section-gap " style="background-image: -webkit-linear-gradient(0deg, #ffffff 0%, #ffffff 100%) !important;" >
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-60 col-lg-6">
				<div class="title text-center">
					<h2 style="margin-bottom: 0px;">Diagnosa</h2><br>
					<!-- <h2>Penyakit Ibu Hamil</h2> -->
					<p>Silahkan pilih gejala yang dirasakan...</p>
				</div>
			</div>
		</div>	
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 col-md-offset-2" >
				<span>Kelompok Gejala 1</span><br>
				<input type="checkbox" name="gf-1"> Gejala 1 <br>
				<input type="checkbox" name="gf-2"> Gejala 2 <br>
				<input type="checkbox" name="gf-3"> Gejala 3 <br>
				<input type="checkbox" name="gf-4"> Gejala 4 <br>
				<input type="checkbox" name="gf-5"> Gejala 5 <br>
				<input type="checkbox" name="gf-6"> Gejala 6 <br>
				<br>
				<span>Kelompok Gejala 2</span><br>
				<input type="checkbox" name="gf-1"> Gejala 1 <br>
				<input type="checkbox" name="gf-2"> Gejala 2 <br>
				<input type="checkbox" name="gf-3"> Gejala 3 <br>
				<input type="checkbox" name="gf-4"> Gejala 4 <br>
				<input type="checkbox" name="gf-5"> Gejala 5 <br>
				<input type="checkbox" name="gf-6"> Gejala 6 <br>
			</div>
		</div>	
		<br>
		<div class="row d-flex justify-content-center">
			<div class="col-md-6" style="float: left; padding: 0;">
				<button type="submit" name="submit" class="btn main-btn" style="background-color: #41C1FF;  border-radius: 0px;">Proses</button>
			</div>	
		</div>						
	</div>	
</section>
<?php } else{ redirect('login_user');}?>