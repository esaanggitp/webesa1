
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('admin/') ?>">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-fingerprint"></i>
        </div>
        <div class="sidebar-brand-text mx-3"><?= $title; ?> </div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider ">
    <!-- Heading -->
    <div class="sidebar-heading">

    </div>
    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/conten') ?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>content</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin/vidio') ?>">
            <i class="fas fa-fw fa-user-tie"></i>
            <span>Vidio</span></a>
    </li>
    
    <!-- Nav Item - Charts -->
 

    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->