<div class="wleo" style="margin-top: 75px;">
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('<?= base_url('assets/front/'); ?>images/kuliner.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Contact
		</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr justify-content-center">
				<div class="size-210 bor10 p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
					<table class="table-center" style="margin: 0 auto; border-collapse: collapse; width: 100%;">
						<tr>
							<td style="text-align: center; padding: 10px;">
								<span class="fs-18 cl5">
									<span class="lnr lnr-map-marker"></span>
								</span>
							</td>
							<td style="padding: 10px;">
								<span class="mtext-110 cl2">Alamat</span>
								<p class="stext-115 cl6 p-t-18">
									<?= $konfig->alamat; ?>
								</p>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; padding: 10px;">
								<span class="fs-18 cl5">
									<span class="lnr lnr-phone-handset"></span>
								</span>
							</td>
							<td style="padding: 10px;">
								<span class="mtext-110 cl2">Hubungi Kami</span>
								<p class="stext-115 cl1 p-t-18">
									+<?= $konfig->no_wa; ?>
								</p>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; padding: 10px;">
								<span class="fs-18 cl5">
									<span class="lnr lnr-envelope"></span>
								</span>
							</td>
							<td style="padding: 10px;">
								<span class="mtext-110 cl2">Beri Dukungan</span>
								<p class="stext-115 cl1 p-t-18">
									<?= $konfig->email; ?>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</section>
</div>
