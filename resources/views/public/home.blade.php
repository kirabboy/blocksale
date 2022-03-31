@extends('public.layouts.master')
@section('title')
    Trang chủ
@endsection
@push('css')
    <link rel="stylesheet" href="{{ asset('public/css/home.css') }}">
@endpush
@section('content')
    <main id="homepage">
        <div id="noidungtrang">
            <section class="banner-header" style="background-image: url({{asset('public/image/banner.png')}})">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                            <!-- Brand/logo -->
                            <a class="navbar-brand" href="#">
                                <img src="image/logo.png" alt="logo">
                            </a>
                            <!-- Links -->
                            <ul class="nav">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#">Trang chủ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Đăng phòng</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col col-lg-6 col-md-12 noidung">
                            <h3>Ứng dụng tìm kiếm phòng trọ miễn phí cho người đi thuê hàng đầu Việt Nam</h3>
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
                            </div>
                            <h4>Tải app ngay để có trải ngiệm tuyệt vời!</h4>
                            <div>
                                <a href="#">
                                    <img src="image/appstore.png" alt="">
                                </a>
                                <a href="#">
                                    <img src="image/ggplay.png" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="xu-huong">
                <div class="container-fluid">
                    <h3>Xu hướng tìm kiếm</h3>
                    <div class="row">
                        <div class="col col-6 col-md-4 col-lg-2">
                            <div class="card img-fluid" style="width:100%">
                                <img class="card-img-top" src="image/binhthanh.jpeg" alt="Card image" style="width:100%">
                                <div class="card-img-overlay">
                                    <h4 class="card-title">Bình Thạnh</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col col-6 col-md-4 col-lg-2">
                            <div class="card img-fluid" style="width:100%">
                                <img class="card-img-top" src="image/binhthanh.jpeg" alt="Card image" style="width:100%">
                                <div class="card-img-overlay">
                                    <h4 class="card-title">Bình Thạnh</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col col-6 col-md-4 col-lg-2">
                            <div class="card img-fluid" style="width:100%">
                                <img class="card-img-top" src="image/binhthanh.jpeg" alt="Card image" style="width:100%">
                                <div class="card-img-overlay">
                                    <h4 class="card-title">Bình Thạnh</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col col-6 col-md-4 col-lg-2">
                            <div class="card img-fluid" style="width:100%">
                                <img class="card-img-top" src="image/binhthanh.jpeg" alt="Card image" style="width:100%">
                                <div class="card-img-overlay">
                                    <h4 class="card-title">Bình Thạnh</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col col-6 col-md-4 col-lg-2">
                            <div class="card img-fluid" style="width:100%">
                                <img class="card-img-top" src="image/binhthanh.jpeg" alt="Card image" style="width:100%">
                                <div class="card-img-overlay">
                                    <h4 class="card-title">Bình Thạnh</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col col-6 col-md-4 col-lg-2">
                            <div class="card img-fluid" style="width:100%">
                                <img class="card-img-top" src="image/binhthanh.jpeg" alt="Card image" style="width:100%">
                                <div class="card-img-overlay">
                                    <h4 class="card-title">Bình Thạnh</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="tong-hop">
                <div class="container-fluid">
                    <div class="row">
                        <!-- TRÁI -->
                        <div class="col col-lg-9 col-12 phong-moi">
                            <div class="widget">
                                <div class="widget-title">
                                    <h3>Phòng mới nhất</h3>
                                    <a href="#" class="">Xem tất cả</a>
                                </div>
                                <div class="widget-content">
                                    <!-- Bài 1 -->
                                    <div class="row">
                                        <div class="col col-lg-3 col-md-4 col-12">
                                            <img src="image/can-ho.jpg" alt="" style="width: 100%;">
                                        </div>
                                        <div class="col col-lg-9 col-md-8 col-12">
                                            <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                            <div>
                                                <div class="left">
                                                    <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                                    </div>
                                                    <div>
                                                        <i class="fal fa-user-friends"></i> <span
                                                            style="margin-right: 30px;">Nam & Nữ</span>
                                                        <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                                    </div>
                                                    <div><i class="fal fa-map-marked-alt"></i> <span>65/7/8 Trần Văn Dư,
                                                            Phường 13,
                                                            Quận Tân Bình, Hồ Chí Minh</span></div>
                                                </div>
                                                <div class="amount">
                                                    <h2>5</h2>
                                                    <p>tr/phòng</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>

                                    <!-- Bài 2 -->
                                    <div class="row">
                                        <div class="col col-lg-3 col-md-4 col-12">
                                            <img src="image/can-ho.jpg" alt="" style="width: 100%;">
                                        </div>
                                        <div class="col col-lg-9 col-md-8 col-12">
                                            <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                            <div>
                                                <div class="left">
                                                    <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                                    </div>
                                                    <div>
                                                        <i class="fal fa-user-friends"></i> <span
                                                            style="margin-right: 30px;">Nam & Nữ</span>
                                                        <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                                    </div>
                                                    <div><i class="fal fa-map-marked-alt"></i> <span>65/7/8 Trần Văn Dư,
                                                            Phường 13,
                                                            Quận Tân Bình, Hồ Chí Minh</span></div>
                                                </div>
                                                <div class="amount">
                                                    <h2>5</h2>
                                                    <p>tr/phòng</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>

                                    <!-- Bài 3 -->
                                    <div class="row">
                                        <div class="col col-lg-3 col-md-4 col-12">
                                            <img src="image/can-ho.jpg" alt="" style="width: 100%;">
                                        </div>
                                        <div class="col col-lg-9 col-md-8 col-12">
                                            <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                            <div>
                                                <div class="left">
                                                    <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                                    </div>
                                                    <div>
                                                        <i class="fal fa-user-friends"></i> <span
                                                            style="margin-right: 30px;">Nam & Nữ</span>
                                                        <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                                    </div>
                                                    <div><i class="fal fa-map-marked-alt"></i> <span>65/7/8 Trần Văn Dư,
                                                            Phường 13,
                                                            Quận Tân Bình, Hồ Chí Minh</span></div>
                                                </div>
                                                <div class="amount">
                                                    <h2>5</h2>
                                                    <p>tr/phòng</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class="text-center">
                                    <a href="#">Xem tất cả</a>
                                </div>
                            </div>
                        </div>
                        <!-- PHẢI -->
                        <div class="col col-lg-3 col-12 da-xac-thuc">
                            <div class="widget">
                                <div class="widget-title">
                                    <h3><i class="fas fa-shield-check"></i> Đã xác thực</h3>
                                    <a href="#" class="">Xem tất cả</a>
                                </div>
                                <div class="widget-content">
                                    <!-- Bài 1 -->
                                    <div class="row">
                                        <div class="col col-lg-12 col-md-4 col-12">
                                            <img src="image/can-ho.jpg" alt="" style="width: 100%;">
                                        </div>
                                        <div class="col col-lg-12 col-md-8 col-12">
                                            <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                            <div>
                                                <div class="left d-xl-none d-lg-none">
                                                    <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                                    </div>
                                                    <div>
                                                        <i class="fal fa-user-friends"></i> <span
                                                            style="margin-right: 30px;">Nam & Nữ</span>
                                                        <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                                    </div>
                                                    <div><i class="fal fa-map-marked-alt"></i> <span>65/7/8 Trần Văn Dư,
                                                            Phường 13,
                                                            Quận Tân Bình, Hồ Chí Minh</span></div>
                                                </div>
                                                <div class="left d-none d-xl-block d-lg-block">
                                                    <div>Quận Tân Bình</div>
                                                </div>
                                                <div class="amount">
                                                    <h2>5</h2>
                                                    <p>tr/phòng</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>

                                    <!-- Bài 2 -->
                                    <div class="row">
                                        <div class="col col-lg-12 col-md-4 col-12">
                                            <img src="image/can-ho.jpg" alt="" style="width: 100%;">
                                        </div>
                                        <div class="col col-lg-12 col-md-8 col-12">
                                            <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                            <div>
                                                <div class="left d-xl-none d-lg-none">
                                                    <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                                    </div>
                                                    <div>
                                                        <i class="fal fa-user-friends"></i> <span
                                                            style="margin-right: 30px;">Nam & Nữ</span>
                                                        <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                                    </div>
                                                    <div><i class="fal fa-map-marked-alt"></i> <span>65/7/8 Trần Văn Dư,
                                                            Phường 13,
                                                            Quận Tân Bình, Hồ Chí Minh</span></div>
                                                </div>
                                                <div class="left d-none d-xl-block d-lg-block">
                                                    <div>Quận Tân Bình</div>
                                                </div>
                                                <div class="amount">
                                                    <h2>5</h2>
                                                    <p>tr/phòng</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class="text-center">
                                    <a href="#">Xem tất cả</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>
@endsection
@push('script')
    <script src="{{ asset('public/js/home.js') }}"></script>
@endpush
