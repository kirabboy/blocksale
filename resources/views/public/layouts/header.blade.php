<header>
    <div class="header-main" style="width: 100%;">
        <div class="container-fluid">
            <div class="header-main-content row">
                <div class="col d-flex justify-content-between align-items-center">
                    <div class="logo">
                        <a href="{{ route('index') }}">

                            <img src="{{ asset(config('custom.shortcut-icon')) }}" alt="logo">
                        </a>
                    </div>
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('index') }}">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('blog.index') }}">Danh sách căn hộ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<main id="homepage">
        <div id="noidungtrang">
            <section class="banner-header" style="background-image: url({{ asset('public/image/banner.png') }})">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                            <!-- Brand/logo -->
                            <a class="navbar-brand" href="{{ route('index') }}">
                                <img src="{{ asset(config('custom.shortcut-icon')) }}" alt="logo">
                            </a>
                            <!-- Links -->
                            <ul class="nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('index') }}">Trang chủ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('blog.index') }}">Danh sách căn hộ</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col col-lg-6 col-md-12 noidung">
                            <!-- <h3>Ứng dụng tìm kiếm phòng trọ miễn phí cho người đi thuê hàng đầu Việt Nam</h3>
                            <div class="form-dropdown">
                                <div class="dropdown sik-dropdown" id="sik-select">
                                    <div class="btn dropdown-toggle" type="button">
                                        HCM
                                    </div>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <span class="dropdown-item" data-value="HCM" selected>
                                                Hồ Chí Minh
                                            </span>
                                        </li>
                                        <li>
                                            <span class="dropdown-item" data-value="HN">
                                                Hà Nội
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                                <form action="" class="search-container">
                                    <input id="search-bar" type="text" name=""
                                        placeholder="Tìm kiếm theo địa điểm, quận, tên đường...">
                                    <button type="" class="search-icon"><i class="fal fa-search"></i></button>
                                </form>
                            </div> -->
                            <h4>Tải app ngay để có trải ngiệm tuyệt vời!</h4>
                            <div>
                                <a href="#">
                                    <img src="{{ asset('public/image/appstore.png') }}" alt="">
                                </a>
                                <a href="#">
                                    <img src="{{ asset('public/image/ggplay.png') }}" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
