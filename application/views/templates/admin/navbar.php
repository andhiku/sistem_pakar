    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col" >
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title" style=""> <span style="font-size: 15px;">Sistem Pakar Penyakit Ibu Hamil</span></a>
             <!--  <span class="site_title"><i class="fa fa-paw"></i></span>
              <p>Sistem Pakar</p><br>
              <p>Penyakit Ibu Hamil</p> -->
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<?php echo base_url() ?>assets/production/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>Hardianti</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-laptop"></i> Halaman Depan </a></li>
                  <li><a><i class="fa fa-dashboard"></i> Dashboard </a></li>
                  <li><a><i class="fa fa-clipboard"></i> Data Gejala <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<?php echo site_url() ?>/kelompok_gejala">Kelompok Gejala</a></li>
                      <li><a href="<?php echo site_url() ?>/gejala">Gejala</a></li>
                      <li><a href="<?php echo site_url() ?>/nilai_cf">Nilai CF</a></li>
                    </ul>
                  </li>
                  <li><a href="<?php echo site_url() ?>/penyakit"><i class="fa fa-medkit"></i> Data Penyakit </a></li>
                  <li><a><i class="fa fa-cogs"></i> Pengaturan <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li ><a href="<?php echo site_url() ?>/pengguna">Pengguna</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-question-circle"></i> Tentang </a></li>

              </div>
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
        
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html" style="width: 100%;">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<?php echo base_url() ?>assets/production/images/img.jpg" alt="">Hardianti
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->