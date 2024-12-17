	<!-- Cart -->
	<div class="container" style="margin-top: 70px;">
		<div class="wrap-header-cart js-panel-cart">
			<div class="s-full js-hide-cart"></div>

			<div class="header-cart flex-col-l p-l-65 p-r-25">
				<div class="header-cart-title flex-w flex-sb-m p-b-8">
					<span class="mtext-103 cl2">
						Your Cart
					</span>

					<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
						<i class="zmdi zmdi-close"></i>
					</div>
				</div>

				<div class="header-cart-content flex-w js-pscroll">
					<ul class="header-cart-wrapitem w-full">
						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="<?= base_url('assets/front/'); ?>/images/item-cart-01.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									White Shirt Pleat
								</a>

								<span class="header-cart-item-info">
									1 x $19.00
								</span>
							</div>
						</li>

						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="<?= base_url('assets/front/'); ?>/images/item-cart-02.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									Converse All Star
								</a>

								<span class="header-cart-item-info">
									1 x $39.00
								</span>
							</div>
						</li>

						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="<?= base_url('assets/front/'); ?>/images/item-cart-03.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									Nixon Porter Leather
								</a>

								<span class="header-cart-item-info">
									1 x $17.00
								</span>
							</div>
						</li>
					</ul>

					<div class="w-full">
						<div class="header-cart-total w-full p-tb-40">
							Total: $75.00
						</div>

						<div class="header-cart-buttons flex-w w-full">
							<a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
								View Cart
							</a>

							<a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
								Check Out
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Product -->
		<div class="bg0 m-t-23 p-b-140">
			<div class="container">
				<div class="flex-w flex-sb-m p-b-52">
					<div class="flex-w flex-l-m filter-tope-group m-tb-10">
						<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
							All Products
						</button>
						<?php foreach($kategori as $kate){ ?>
						<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
							data-filter=".<?= $kate['id_kategori']?>">
							<?= $kate['nama_kategori'] ?>
						</button>
						<?php } ?>
					</div>

					<div class="flex-w flex-c-m m-tb-10">
						<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
							<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
							<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
							Search
						</div>
					</div>

					<!-- Search product -->
					<div class="dis-none panel-search w-full p-t-10 p-b-15">
						<div class="bor8 dis-flex p-l-15">
							<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
								<i class="zmdi zmdi-search"></i>
							</button>
							<input id="search-product" class="mtext-107 cl2 size-114 plh2 p-r-15" type="text"
								name="search-product" placeholder="Search">
						</div>
					</div>


				</div>

				<div id="product-container" class="row isotope-grid">
					<?php foreach ($konten as $uu) { ?>
					<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item <?= $uu['id_kategori'] ?>">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="<?= base_url('assets/upload/konten/' . $uu['foto']) ?>"
									alt="<?= $uu['judul'] ?>">
								<a href="<?= base_url('detail/index/' . $uu['id_konten']) ?>"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
									Quick View
								</a>
							</div>
							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l text-center">
									<a href="<?= base_url('detail/index/' . $uu['id_konten']) ?>"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 mx-auto"><?= $uu['judul'] ?></a>
									<span class="stext-105 cl3 mx-auto"><?= substr($uu['keterangan'], 0, 10) ?>...<a
											href="<?= base_url('detail/index/' . $uu['id_konten']) ?>">Baca
											Selengkapnya</a></span>
									<div class="stext-105 cl3 mx-auto"><small><?= $uu['nama_kategori'] ?></small></div>
								</div>
							</div>
						</div>
					</div>
					<?php } ?>
				</div>

			</div>
		</div>
	</div>
