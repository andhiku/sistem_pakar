       				<div class="container">
					<div class="row justify-content-end fullscreen align-items-center">
						<div class="col-lg-6 col-md-12 banner-left">
								<h1 class="text-white">
									Hai Bunda, <br>
									konsultasikan penyakit anda segera..						
								</h1>
								<p class="mx-auto text-white  mt-20 mb-40">
									Jagalah kesehatan bunda, karena pertumbuhan bayi tergantung pada kesehatan masa-masa hamil anda.
								</p>
								<?php 
								if($this->session->userdata('is_login') == TRUE && $this->session->userdata('level') == 'pasien'){
								?>
								<a href="<?php echo site_url() ?>/login_user"" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
								<?php } else{ ?>
								<a href="<?php echo site_url() ?>/welcome/diagnosa"" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
								<?php } ?>
						</div>
						<div class="col-lg-6 col-md-12 no-padding banner-right">
							<img style="height: 570px; width: 700px; margin-bottom: 30px;" src="<?php echo base_url() ?>assets/templateuser/img/img_banner3.png" alt="">
						</div>
					</div>
				</div>
			</section>
			<!-- End banner Area -->	
			

			<!-- Start service Area -->
			<section class="service-area section-gap" id="feature" style="background-color: #F9F9FF;">
				<div class="container">
					<div class="row d-flex justify-content-center" ">
						<div class="menu-content pb-60 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Informasi Penyakit</h1>
								<p>Lihat beberapa informasi seputar penyakit pada ibu hamil.</p>
							</div>
						</div>
					</div>						
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6  col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/stethoscope.png" alt="">
									<h4><a href="#">Kehamilan Ektropik</a></h4>	
									<span>Kehamilan berawal dari sel telur yang telah dibuahi oleh sel sperma. Dalam proses normal, sel telur yang telah dibuahi ini akan menetap di tuba falopi selama kurang lebih tiga hari, sebelum dilepaskan ke dalam rahim. Di dalam rahim, sel telur ini akan terus berkembang hingga masa persalinan tiba. Namun ada kemungkinan sel telur yang telah dibuahi menempel pada organ selain rahim dan inilah yang disebut kehamilan ektopik. Salah satu penyebab kehamilan ektopik yang paling umum terjadi adalah kerusakan tuba falopi, selain itu,kadar hormon yang tidak seimbang atau perkembangan abnormal pada sel telur yang sudah dibuahi terkadang dapat berperan sebagai pemicu.</span>							
								</div>
							</div>
							<div class="col-lg-6  col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/antibiotic.png" alt="">
									<h4><a href="#">Abortus</a></h4>
									<span>Abortus atau keguguran adalah keluarnya embrio secara spontan dari dalam kandungan sebelum usia 20 minggu kehamilan. Penyebab pasti di balik keguguran belum diketahui. Namun, para pakar memperkirakan sebagian besar kasus keguguran yang disebabkan oleh adanya keabnormalan pada kromosom bayi. Terutama pada trimester pertama. Keguguran, yang terjadi pada usia kehamilan trimester kedua, biasanya disebabkan oleh penyakit atau kondisi kesehatan ibu yang kurang baik. Sedangkan keguguran yang terjadi pada trimester terakhir kemungkinan disebabkan oleh infeksi yang terjadi disekitar janin, disusul dengan ketuban pecah dini.</span>								
								</div>
							</div>
							<div class="col-lg-6  col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/medical-app.png" alt="">
									<h4><a href="#">Mola Hidatidosa (Hamil Anggur)</a></h4>		
									<span>Hamil anggur adalah kehamilan yang gagal, di mana terjadi kelainan pada proses perkembangan sel telur setelah dibuahi, sehingga gagal tumbuh menjadi seorang bayi. Pada hamil anggur, sel-sel telur dan plasenta yang tidak mampu berkembang ini akan membentuk sekumpulan kista (gelembung berisi cairan) yang bentuknya menyerupai anggur putih. Penyebab hamil anggur adalah ketidakseimbangan kromosom selama kehamilan. Kondisi ini dapat terjadi jika sel telur yang dibuahi tidak memiliki infromasi genetika atau 1 sel telur normal dibuahi oleh dua sperma secara bersamaan.</span>						
								</div>
							</div>
							<div class="col-lg-6 col-md-6 ">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/syringe.png" alt="">
									<h4><a href="#">Plasenta Previa</a></h4>	
									<span>Plasenta previa adalah kondisi ketika sebagian atau seluruh plasenta menutupi mulut rahim.Plasenta atau ari-ari akan terbentuk dan menempel pada dinding rahim saat seorang wanita menjadi hamil. Organ ini terhubung dengan bayi melalui tali pusar yang berfungsi untuk menyalurkan oksigen dan nutrisi. Selama masa kehamilan, rahim seorang wanita akan berkembang dan plasenta dengan kondisi normal akan melebar ke arah atas serta menjauhi leher rahim atau serviks. Apabila tetap berada di bagian bawah rahim atau di dekat serviks, plasenta dapat menutupi sebagian atau seluruh jalan lahir bayi. Kondisi inilah yang disebut plasenta previa.</span>							
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/syringe2.png" alt="">
									<h4><a href="#">Solusio plasenta </a></h4>	
									<span>Solusio plasenta (solutio placentae), atau yang disebut juga sebagai abrupsio plasenta (abruptio placentae), adalah lepasnya plasenta dari dinding rahim bagian dalam sebelum proses persalinan, baik seluruhnya maupun sebagian. Plasenta tumbuh di dalam rahim ibu selama masa kehamilan dan berfungsi untuk memberikan nutrisi serta oksigen pada janin dalam kandungan. Solusio plasenta berisiko membahayakan nyawa ibu dan bayi yang dikandung jika tidak segera ditangani. Hal ini dikarenakan solusio plasenta bisa menyebabkan perdarahan hebat pada sang ibu dan mengurangi suplai nutrisi serta oksigen untuk sang bayi.</span>							
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/blood-transfusion.png" alt="">
									<h4><a href="#">Preeklampsia</a></h4>	
									<span>Preeklamsia adalah sebuah komplikasi pada kehamilan yang ditandai dengan tekanan darah tinggi (hipertensi) dan tanda-tanda kerusakan organ, misalnya kerusakan ginjal yang ditunjukkan oleh tingginya kadar protein pada urine (proteinuria). Preeklamsia juga sering dikenal dengan nama toksemia. Gejala preeklamsia biasanya muncul saat usia kehamilan memasuki minggu ke-20 atau lebih (paling umum usia kehamilan 24-26 minggu), sampai tak lama setelah bayi lahir. Preeklamsia yang tidak disadari oleh sang ibu hamil bisa berkembang menjadi eklamsia, kondisi medis serius yang mengancam keselamatan ibu hamil dan janinnya.</span>							
								</div>
							</div>		
							<div class="col-lg-6 col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/perfusion.png" alt="">
									<h4><a href="#">Ekslampsia</a></h4>								
									<span>Eklamsia adalah kondisi serius akibat preeklamsia pada ibu hamil, yang ditandai adanya kejang. Dengan kata lain, preeklamsia yang disertai kejang disebut eklamsia. Preeklamsia umumnya terjadi pada trimester terakhir kehamilan, dan risiko munculnya kejang (eklamsia) adalah pada saat mendekati persalinan. Kejang eklamsia dapat dibagi menjadi 2 fase. Fase pertama adalah kejang sekitar 15-20 detik yang ditandai dengan kedutan di sekitar wajah. Setelah itu, kejang eklamsia akan masuk fase kedua yang ditandai dengan kejang otot di sekitar rahang, otot mata, dan akhirnya menyebar ke seluruh tubuh selama sekitar 60 detik.</span>
								</div>
							</div>		
							<div class="col-lg-6 col-md-6 mb-30">
								<div class="single-service" style="background-color: white; padding: 20px;">
									<img class="d-block mx-auto mb-30" src="<?php echo base_url() ?>assets/templateuser/img/uterus.png" alt="">
									<h4><a href="#">Infeksi Saluran Kemih (ISK) </a></h4>	
									<span>Infeksi saluran kemih (ISK) adalah kondisi ketika organ yang termasuk dalam sistem kemih, yaitu ginjal, ureter, kandung kemih, dan uretra, mengalami infeksi. Umumnya, ISK terjadi pada kandung kemih dan uretra. Berdasarkan bagian yang terinfeksi, ISK terbagi menjadi ISK atas dan ISK bawah. ISK atas merupakan infeksi yang terjadi di bagian atas kandung kemih, yaitu di ginjal dan ureter. Sedangkan ISK bawah adalah infeksi pada kandung kemih bagian bawah, yaitu kandung kemih dan uretra. ISK atas lebih berbahaya dan dapat memicu urosepsis, yaitu kondisi ketika bakteri di ginjal yang terinfeksi menyebar ke darah.</span>							
								</div>
							</div>		
						</div>																	
					</div>
				</div>	
			</section>
			<!-- End service Area -->
			
			<!-- Start call-to-action Area -->
			<section id="tentang" class="call-to-action-area section-gap" >
				<div class="container">
					<div class="row justify-content-center top">
						<div class="col-lg-12">
							<h1 class="text-white text-center">Tentang Kami!</h1><br><br><br>
							<div class="col-lg-6" style="float: left;">
								<img src="<?php echo base_url() ?>assets/templateuser/img/bg-02.jpg">
							</div>	
							<div class="col-lg-6" style="float:right">
								<p class="text-white mt-30" style="margin-top: 0" >
									<span style="font-size: 28px; font-style: bold">Hai Bunda...</span> <br>
									Apakah anda sedang berbahagia menanti kehadiran buah hati tercinta? sudahkah anda memeriksakan kondisi kesehatan buah hati anda secara rutin? Ingin melakukan pemeriksaan namun anda sibuk? kekurangan biaya? <span style="font-size: 20px; font-style: bold">Tenang...</span><br>  
									SP BUMIL hadir untuk memberikan solusi bagi bunda yang ingin melakukan pemeriksaan rutin secara mandiri, gratis dan dapat dilakukan dimana saja.
									SP BUMIL atau Sistem Pakar Penyakit Pada Ibu Hamil adalah sebuah website konsultasi yang dibuat untuk membantu para bunda mendiagnosa secara dini penyakit yang anda alami dengan mandiri berdasarkan gejala fisik yang dirasakan.
								</p>	
								<?php 
								if($this->session->userdata('is_login') == TRUE && $this->session->userdata('level') == 'pasien'){
								?>
								<a href="<?php echo site_url() ?>/login_user"" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
								<?php } else{ ?>
								<a href="<?php echo site_url() ?>/welcome/diagnosa"" class="text-uppercase header-btn">Diagnosa Sekarang <i class="fa fa-arrow-right"></i></span></a>
								<?php } ?>	
							</div>		
									
						</div>
					</div>
					
				</div>	
			</section>
			<!-- End call-to-action Area -->

			<div id="testimonial" class="section md-padding">

				<!-- Background Image -->
				<div class="bg-img" style="background-image: url('<?php echo base_url() ?>assets/templateuser/./img/bg.jpg');">
					<div class="overlay"></div>
				</div>
				<!-- /Background Image -->

				<!-- Container -->
				<div class="container">
						<div class="col-lg-12">
							<h2 class="text-white text-center">Tentang Pakar</h2>				
						</div>
						<br>
					<!-- Row -->
					<div class="row">

					<!-- Testimonial slider -->
						<div id="testimonial-slider" class="owl-carousel owl-theme">
							<div class="row">
								<!-- testimonial -->
								<div class="col-md-6 ">
									<div class="testimonial">
										<div class="testimonial-meta" style="padding-top: 30px;">
											<img src="<?php echo base_url() ?>assets/templateuser/./img/doctor.png" alt=""  style="width: 200px !important; height: 200px !important;">
											<h3 class="white-text" style="margin-left: 130px;">dr. H. A. Mursyid Achmad, Sp.Og</h3>
											<span style="margin-left: 130px;">Spesialis Kebidanan dan Kandungan</span>
										</div>
										<div class="col-lg-12 col-sm-12 footer-social" style="text-align: left; margin-left: 205px; padding-top: 30px;">
											<a href="#"><i class="fa fa-facebook"></i></a>
											<a href="#"><i class="fa fa-twitter"></i></a>
											<a href="#"><i class="fa fa-dribbble"></i></a>
											<a href="#"><i class="fa fa-behance"></i></a>
										</div>
									</div>
								</div>
								<!-- /testimonial -->
								<div class="col-md-6">
									<span style="color: white;">Alamat : </span><br>
									<span>Jl. Buakana</span><br>
									<span style="color: white;">Prakter : </span><br>
									<span>RSIA Siti Khadijah III</span><br>
									<span style="color: white;">Pengalaman Kerja 	: </span><br>
									<span>1. Dokter PTT Puskesmas Karampung Kab.Luwu 										Sulawesi selatan</span><br>
									<span>2. Dokter PNS RSU Ampana Kab.Poso Sulawesi Tengah</span><br>
									<span>3. Dokter Spesialis Kebidanan dan Kandungan RSU Lasinrang 2006 s/d 2009</span><br>
									<span>4. Dokter Spesialis Kandungan RSUD Kota Makassar 2009 s/d sekarang</span>
									
								</div>
							</div>


						</div>
					<!-- /Testimonial slider -->

					</div>
					<!-- /Row -->

				</div>
				<!-- /Container -->

			</div>
					
			
			<section class="call-to-action-area section-gap" >
				<div class="container">
					<div class="row justify-content-center top">
						<div class="col-lg-12">
							<h2 class=" text-white text-center">Testimonials</h2><br><br>
							<div class="row">
								<div class="col-lg-6">
									<div class="active-testimonial">
										<div class="single-testimonial item d-flex flex-row">
											<div class="thumb">
												<img class="img-fluid" src="<?php echo base_url() ?>assets/templateuser/img/doctor2.png" alt="" style="width: 100px; height: 60px;">
											</div>
											<div class="desc" style="margin-left: 20px;">
												<p class="text-white" style="font-style: italic;">
													"SPBUMIL ini sangat menarik dan membantu bagi para dokter dalam melakukan pemeriksaan kepada pasien"
												</p>
												<h4 mt-30 class="text-white">Mursyid Achmad<span class="text-white" style="color: grey; font-size: 14px;"> - Dokter</span></h4>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="single-testimonial item d-flex flex-row">
										<div class="thumb">
											<img class="img-fluid" src="<?php echo base_url() ?>assets/templateuser/img/t2.png" alt="">
										</div>
										<div class="desc" style="margin-left: 20px;">
											<p class="text-white" style="font-style: italic;">
												"Web ini sangat membantu bagi kami para ibu untuk mendeteksi lebih dini penyakit yang kami alami.
											</p>
											<h4 mt-30 class="text-white">Maryam<span class="text-white" style="color: grey; font-size: 14px;"> - Ibu Rumah Tangga</span></h4>
											
										</div>
									</div>
								</div>
							</div>						
						</div>
					</div>
					
				</div>	
			</section>

			<!-- <div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Latest News from all categories</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> labore  et dolore magna aliqua.</p>
							</div>
						</div>
					</div> -->		

			<section id="kontak" class="call-to-action-area section-gap " style="background-image: none;" >
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Get It Touch!</h1>
								<p>Punya pertanyaan, saran atau kritikan? Hubungi kami atau kirim email kepada kami dan kami akan memberi tanggapan sesegera mungkin!</p>
							</div>
						</div>

						<div class="col-md-8 col-md-offset-2" >
							<form action="#" method="post" class="contact-form" >
								<input type="text" class="name input" name="name" placeholder="Nama Depan" required="" style="background: none; border:1px solid #10161A; font-size: 14px;">
								<input type="text" class="name input" name="name" placeholder="Nama Belakang" required="" style="background: none; border:1px solid #10161A; font-size: 14px;">
								<input type="email" class="name input" name="name" placeholder="Email" required="" style="background: none; border:1px solid #10161A; font-size: 14px;">
								<input type="text" class="name input" name="name" placeholder="Subject" required="" style="background: none; border:1px solid #10161A; font-size: 14px;">
								<textarea placeholder="Pesan Anda" required="" style="background: none; border:1px solid #10161A; font-size: 14px;"></textarea>
								<input type="submit" class="main-btn" style="background-color: #41C1FF" value="Kirim Pesan">
							</form>
						</div>							
					</div>
					
				</div>	
			</section>
