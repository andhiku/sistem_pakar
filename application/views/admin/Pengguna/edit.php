<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel tile fixed_height_350">
			<div class="x_title">

				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3>Update Pengguna</h3>

							<br>
							<form action="" method="POST">
								<div class="container">
									<div class="row">
										<input type="hidden" name="id" value="<?php echo $pengguna['id'] ?>">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span >Nama Pengguna : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="nama" class="form-control " style="font-size: 12px;" value="<?php echo $pengguna['nama'] ?>" >
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Email : </span>
										</div>
										<div class="col-md-12">
											<input type="email" name="email" class="form-control" style="font-size: 12px;" value="<?php echo $pengguna['email'] ?>">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Username : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="username" class="form-control" style="font-size: 12px;" value="<?php echo $pengguna['username'] ?>">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Password : </span>
										</div>
										<div class="col-md-12">
											<input type="Password" name="password" class="form-control" style="font-size: 12px;" value="<?php echo $pengguna['password'] ?>">
										</div>
									</div>
									<br>
									<button type="submit" name="submit" class="btn btn-primary btn-sm" style="border-radius: 0px; background: #1ABB9C; border-color: #1ABB9C;">Update</button>
									<a href="<?php echo site_url('/gejala/index') ?>" class="btn btn-default btn-flat btn-sm" style="border-radius: 0px;">Batal</a>
								</div>
							</form>
						</div>	
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>