<aside class="main-sidebar sidebar-green elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <img src="{{ asset('public/admin/image/profile.svg') }}" alt="AdminLTE Logo"
            class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light text-light">{{ auth()->guard('admin')->user()->admin_info->fullname }}</span>
    </a>

    <!-- Sidebar -->
    <div id="sideBar" class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar nav-check-current flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item menu-open">
                    <a href="{{ route('dashboard.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Bảng quản trị
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('admin.building.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                            Quản trị cơ sở
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('ban-lam-viec.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Bàn làm việc
                        </p>
                    </a>
                </li>

                <li class="nav-header text-uppercase">Quản lý khách hàng</li>

                <li class="nav-item">
                    <a href="{{ route('admin.customer.index') }}" class="nav-link">
                        <i class="nav-icon far fa-user"></i>
                        <p>
                            Hồ sơ khách hàng
                        </p>
                    </a>
                </li>

                <li class="nav-header text-uppercase">Hợp đồng</li>

                <li class="nav-item">
                    <a href="{{ route('hop-dong.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-cog"></i>
                        <p>Hợp đồng</p>
                    </a>
                </li>
                <li class="nav-header text-uppercase">Quản lý tổ chức</li>

                <li class="nav-item">
                    <a href="{{ route('roles.index') }}" class="nav-link">
                        <i class="nav-icon far fa-user"></i>
                        <p>
                            Vai trò
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('quan-ly-admin.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-user-friends"></i>
                        <p>
                            Người dùng
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
