<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel tile fixed_height_350">
			<div class="x_title">

				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3>Tambah Penyakit</h3>

							<br>
							<form action="" method="POST">
								<div class="container">
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Kode Penyakit : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="kode" class="form-control " style="font-size: 12px;">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Nama Penyakit : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="nama" class="form-control" style="font-size: 12px;">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Keterangan : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="keterangan" class="form-control" style="font-size: 12px;">
										</div>
									</div>
									<br>
									<button type="submit" name="submit" class="btn btn-primary btn-sm" style="border-radius: 0px; background: #1ABB9C; border-color: #1ABB9C;">Simpan</button>
									<a href="<?php echo site_url('/penyakit/index') ?>" class="btn btn-default btn-flat btn-sm" style="border-radius: 0px;">Batal</a>
								</div>
							</form>
						</div>	
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>