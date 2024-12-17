
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?= $title ?></title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

  <link rel="shortcut icon" type="image/png" href="<?= base_url('assets/modernize/src/') ?>/assets/images/logos/favicon.png" />
  <link rel="stylesheet" href="<?= base_url('assets/modernize/src/') ?>/assets/css/styles.min.css" />
  <style>
    
  </style>
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <!-- Sidebar Start -->
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
          <a href="<?= base_url(); ?>" class="text-nowrap logo-img">
            <img src="<?= base_url('assets/modernize/src/') ?>/assets/images/logos/dark-logo.svg" width="180" alt="" />
          </a>
          <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
            <i class="ti ti-x fs-8"></i>
          </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
          <ul id="sidebarnav">
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Home</span>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/home') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-layout-dashboard"></i>
                </span>
                <span class="hide-menu">Dashboard</span>
              </a>
            </li>
            <?php if($this->session->userdata('level') == 'Admin'){ ?>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/user/index') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-article"></i>
                </span>
                <span class="hide-menu">User</span>
              </a>
            </li>
            <?php }?>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/kategori') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-layout-dashboard"></i>
                </span>
                <span class="hide-menu">Kategori</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/caraousel') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-aperture"></i>
                </span>
                <span class="hide-menu">Carousel</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/konfigurasi') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-article"></i>
                </span>
                <span class="hide-menu">Konfigurasi</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/konten') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-file-description  "></i>
                </span>
                <span class="hide-menu">Konten</span>
              </a>
            </li>
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">AUTH</span>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/auth') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-login"></i>
                </span>
                <span class="hide-menu">Login</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="<?= base_url('admin/auth/logout') ?>" aria-expanded="false">
                <span>
                  <i class="ti ti-user-plus"></i>
                </span>
                <span class="hide-menu">Log-Out</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <!--  Header Start -->
      <header class="app-header">
        <nav class="navbar navbar-expand-lg navbar-light">
          <ul class="navbar-nav">
            <li class="nav-item d-block d-xl-none">
              <a class="nav-link sidebartoggler nav-icon-hover" id="headerCollapse" href="javascript:void(0)">
                <i class="ti ti-menu-2"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-icon-hover" href="javascript:void(0)">
                <i class="ti ti-bell-ringing"></i>
                <div class="notification bg-primary rounded-circle"></div>
              </a>
            </li>
          </ul>
          <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
              <li class="nav-item dropdown">
                <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  <img src="<?= base_url('assets/modernize/src/') ?>/assets/images/profile/user-1.jpg" alt="" width="35" height="35" class="rounded-circle">
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
                  <div class="message-body">
                    <a href="<?= base_url('admin/auth/logout') ?>" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </nav>
</header>
        <div class="container-fluid">
            <h1 class="card-title fw-semibold mb-4"><?= $judul ?></h1>
            <div class="">
              <?= $contents ?>
            </div>
        </div>
    
      </div>
    </div>
  <script src="<?= base_url('assets/modernize/src/') ?>/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="<?= base_url('assets/modernize/src/') ?>/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url('assets/modernize/src/') ?>/assets/js/sidebarmenu.js"></script>
  <script src="<?= base_url('assets/modernize/src/') ?>/assets/js/app.min.js"></script>
  <script src="<?= base_url('assets/modernize/src/') ?>/assets/libs/simplebar/dist/simplebar.js"></script>

  <script>
        $('#hilang').delay('slow').slideDown('slow').delay(600).slideUp(600);
        $(document).ready(function() {
    // When the user clicks the button to view photo, show the modal
    $('.view-photo-button').on('click', function() {
        var targetModal = $(this).data('target');
        $(targetModal).modal('show');
    });

    // When the user clicks the close button, hide the modal
    $('.btn-close, .btn-secondary').on('click', function() {
        var modal = $(this).closest('.modal');
        modal.modal('hide');
    });
});

    </script>
</body>

</html>