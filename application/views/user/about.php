<div class="wleo" style="margin-top: 75px;">
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('<?= base_url('assets/front/'); ?>images/kuliner.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			About
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Profil
						</h3>

						<p class="stext-113 cl6 p-b-26">
                            <?= nl2br($konfig->profil_website); ?>
						</p>

						<p class="stext-113 cl6 p-b-26">
							Ada pertanyaan? Beri tahu kami <?= $konfig->alamat; ?> atau hubungi kami di <?= $konfig->no_wa; ?>
						</p>
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="<?= base_url('assets/front/'); ?>images/about-01.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Mission
						</h3>

						<p class="stext-113 cl6 p-b-26">
							<?= nl2br($konfig->profil_website); ?>
						</p>

						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
								Indonesia dikenal sebagai surganya kuliner dengan keberagaman cita rasa yang kaya dari Sabang sampai Merauke. Dari makanan tradisional hingga modern, setiap daerah memiliki keunikan yang membuatnya istimewa. Berikut beberapa kuliner yang wajib Anda coba
							</p>
						</div>
					</div>
				</div>

				<div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
					<div class="how-bor2">
						<div class="hov-img0">
							<img src="<?= base_url('assets/front/'); ?>images/about-02.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
</div>