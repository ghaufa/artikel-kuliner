
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/bootstrap/js/popper.js"></script>
	<script src="<?= base_url('assets/front/'); ?>vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function () {
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/daterangepicker/moment.min.js"></script>
	<script src="<?= base_url('assets/front/'); ?>vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/slick/slick.min.js"></script>
	<script src="<?= base_url('assets/front/'); ?>js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function () { // the containers for all your galleries
			$(this).magnificPopup({
				delegate: 'a', // the selector for gallery item
				type: 'image',
				gallery: {
					enabled: true
				},
				mainClass: 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function (e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function () {
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function () {
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function () {
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function () {
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function () {
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function () {
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function () {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function () {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/front/'); ?>js/main.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js"></script>

<script>
$(document).ready(function() {
    var $grid = $('.isotope-grid').isotope({
        itemSelector: '.isotope-item',
        layoutMode: 'fitRows'
    });

    // Get category from URL parameters
    var urlParams = new URLSearchParams(window.location.search);
    var category = urlParams.get('category');

    if (category) {
        // Filter items by category
        $grid.isotope({ filter: '.' + category });
        
        // Update the active filter button
        $('.filter-tope-group button').removeClass('how-active1');
        $('.filter-tope-group button[data-filter=".' + category + '"]').addClass('how-active1');
    }

    // Bind filter button click
    $('.filter-tope-group button').on('click', function() {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({ filter: filterValue });
        
        // Update the active filter button
        $('.filter-tope-group button').removeClass('how-active1');
        $(this).addClass('how-active1');
    });
});
</script>

<script>
$(document).ready(function() {
    // Inisialisasi Isotope
    var $grid = $('#product-container').isotope({
        itemSelector: '.isotope-item',
        layoutMode: 'fitRows'
    });
    
    // Fungsi pencarian
    $('#search-product').on('keyup', function() {
        var searchValue = $(this).val().toLowerCase();
        $grid.isotope({
            filter: function() {
                var title = $(this).find('.js-name-b2').text().toLowerCase();
                return title.includes(searchValue);
            }
        });
    });
});


</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var maxWords = 21; // Batasan jumlah kata yang ditampilkan
        var element = document.getElementById('profil-website');
        var readMoreLink = document.getElementById('read-more');
        var readLessLink = document.getElementById('read-less');
        var originalText = element.innerHTML.trim();
        var words = originalText.split(/\s+/);
        
        if (words.length > maxWords) {
            var truncatedText = words.slice(0, maxWords).join(' ') + '...';
            element.innerHTML = truncatedText;
            readMoreLink.style.display = 'inline';

            readMoreLink.addEventListener('click', function() {
                element.innerHTML = originalText;
                readMoreLink.style.display = 'none';
                readLessLink.style.display = 'inline';
            });

            readLessLink.addEventListener('click', function() {
                element.innerHTML = truncatedText;
                readMoreLink.style.display = 'inline';
                readLessLink.style.display = 'none';
            });
        }
    });
</script>
