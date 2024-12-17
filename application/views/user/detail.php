<style>
	.img-crop {
		width: 90px;
		height: 110px;
		overflow: hidden;
		position: relative;
	}

	.img-crop img {
		width: 100%;
		height: 100%;
		object-fit: cover;
		object-position: center;
	}
</style>
<!-- Cart -->
<div class="container" style="margin-top: 70px;">


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="<?= base_url(); ?>" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="<?= base_url('shop'); ?>" class="stext-109 cl8 hov-cl1 trans-04">
				Blog
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>
			<?php foreach($konten as $uu){ ?>
			<span class="stext-109 cl4">
				<?= $uu['tanggal'] ?>
			</span>
			<?php } ?>
		</div>
	</div>


	<!-- Content page -->
	<section class="bg0 p-t-52 p-b-20">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!--  -->
						<?php foreach($konten as $uu){ ?>
						<div class="wrap-pic-w how-pos5-parent">
							<img src="<?= base_url('assets/upload/konten/' . $uu['foto']) ?>" alt="<?= $uu['judul'] ?>">
							<div class="flex-col-c-m size-123 bg9">
								<span class="date cl2 txt-center">
									<?= $uu['tanggal'] ?>
								</span>
							</div>
						</div>


						<div class="p-t-32">
							<span class="flex-w flex-m stext-111 cl2 p-b-19">
								<span>
									<span class="cl4">By</span> <?= $uu['username'] ?>
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span>

								<span>
									<?= $uu['tanggal'] ?>
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span>

								<span>
									<?= $uu['nama_kategori'] ?>
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span>
							</span>

							<h4 class="ltext-109 cl2 p-b-28">
								<?= $uu['judul'] ?>
							</h4>

							<p class="stext-117 cl6 p-b-26">
								<?= nl2br($uu['keterangan']) ?>
							</p>

						</div>
						<?php } ?>

						<!--  -->
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">


						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-33">Kategori</h4>
							<ul>
								<?php foreach($kategori as $kate){ ?>
								<li class="bor18">
									<a href="<?= base_url('shop?category=') . $kate['id_kategori'] ?>"
										class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										<?= $kate['nama_kategori'] ?>
									</a>
								</li>
								<?php } ?>
							</ul>
						</div>

						<div class="p-t-65">
							<h4 class="mtext-112 cl2 p-b-33">
								Rekomendasi
							</h4>

							<ul>
								<?php 
								foreach ($rekomendasi as $uu) { 
									
									?>
								<li class="flex-w flex-t p-b-30">
									<a href="<?= base_url('detail/index/' . $uu['id_konten']) ?>"
										class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
										<div class="img-crop">
											<img src="<?= base_url('assets/upload/konten/' . $uu['foto']) ?>"
												alt="<?= $uu['judul'] ?>">
										</div>

									</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="" class="stext-116 cl8 hov-cl1 trans-04">
											<?= $uu['judul'] ?>
										</a>

										<span class="stext-116 cl6 p-t-20">
											<?= $uu['nama_kategori'] ?>
										</span>
									</div>
								</li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>