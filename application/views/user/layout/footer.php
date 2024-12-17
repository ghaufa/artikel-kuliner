<!-- Footer -->
<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-5 p-b-50">
					<a href="#" class="navbar-brand font-weight-bold text-secondary-301 cl0 p-b-30">
						<i></i>
						<span class="text-primary"><?= $konfig->judul_website; ?></span>
					</a>
					<p class="stext-107 cl7 size-201" id="profil-website">
						<?= $konfig->profil_website; ?>
					</p>
					<a href="javascript:void(0);" id="read-more" style="display: none;">Baca Selengkapnya</a>
					<a href="javascript:void(0);" id="read-less" style="display: none;">Baca Lebih Sedikit</a>

					<div class="p-t-27">
						<a href="<?= $konfig->facebook; ?>" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="<?= $konfig->instagram; ?>" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="<?= $konfig->no_wa; ?>" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-whatsapp"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Quick Links
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="<?= base_url() ?>" class="stext-107 cl7 hov-cl1 trans-04">
								Home
							</a>
						</li>
						<?php foreach($kategori as $kate){ ?>
						<li class="p-b-10">
							<a href="<?= base_url('home/kategori/'.$kate['id_kategori'])?>"
								class="stext-107 cl7 hov-cl1 trans-04">
								<?= $kate['nama_kategori'] ?>
							</a>
						</li>
						<?php } ?>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-4 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in <?= $konfig->alamat; ?> or call us
						on +<?= $konfig->no_wa; ?>
					</p>
				</div>
			</div>
			<div>
				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;<script>
						document.write(new Date().getFullYear());
					</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://www.instagram.com/ghaufaa_/" target="_blank">GhulamAufa</a> &amp; distributed by
					<a href="https://themewagon.com" target="_blank">ThemeWagon</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>