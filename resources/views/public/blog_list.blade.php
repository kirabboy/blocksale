@extends('public.layouts.master')
@section('title')
Danh sách căn hộ
@endsection
@push('css')
<link rel="stylesheet" href="{{ asset('public/css/blog_list.css') }}">
@endpush
@section('content')
<main>
    <section class="detail-home">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-4 col-md-12">
                    <div class="box_filter">
                        <nav class='animated bounceInDown'>
                            <div class="title_filter">
                                <span class="tit">Bộ lọc</span>
                                <div class="btn_fil">
                                    <div class="btn_">
                                        <span>Áp dụng</span>
                                    </div>
                                </div>
                            </div>
                            <ul class="menu_filter">
                                <li class='sub-menu'><a href='#message'>Giá<div class='fa fa-caret-down right'></div>
                                    </a>
                                    <ul>
                                        <div id="time-range">
                                            <div class="d-flex justify-content-between mb-3">
                                                <span class="slider-time">0 tr</span> <span class="slider-time2">15
                                                    tr</span>
                                            </div>

                                            <div class="sliders_step1">
                                                <div class="flat-slider" id="slider-range"></div>
                                            </div>
                                            <div class="d-flex justify-content-between mt-3">
                                                <span class="">0 tr</span> <span class="">15
                                                    tr</span>
                                            </div>
                                        </div>
                                    </ul>
                                </li>

                                <li class='sub-menu'><a href='#settings'>Tiện ích <div class='fa fa-caret-down right'>
                                        </div></a>
                                    <ul>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">WC riêng
                                                    </span>
                                                </span>
                                                <input type="checkbox" name="utilitiesCheckbox">
                                                <span class="checkbox_list">
                                                </span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">WC riêng
                                                    </span>
                                                </span>
                                                <input type="checkbox" name="utilitiesCheckbox">
                                                <span class="checkbox_list">
                                                </span>
                                            </label>
                                        </li>


                                    </ul>
                                </li>
                                <li class='sub-menu'><a href='#settings'>Loại phòng<div class='fa fa-caret-down right'>
                                        </div></a>
                                    <ul>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">WC riêng
                                                    </span>
                                                </span>
                                                <input type="checkbox" name="utilitiesCheckbox">
                                                <span class="checkbox_list">
                                                </span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">WC riêng
                                                    </span>
                                                </span>
                                                <input type="checkbox" name="utilitiesCheckbox">
                                                <span class="checkbox_list">
                                                </span>
                                            </label>
                                        </li>
                                        <!-- <li><a href='#settings'>Notification</a></li> -->
                                    </ul>
                                </li>
                                <li class='sub-menu'><a href='#message'>Giới tính<div class='fa fa-caret-down right'>
                                        </div></a>
                                    <ul>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">Tất cả
                                                    </span>
                                                </span>
                                                <input type="radio" name="utilitiesCheckbox">
                                                <span class="radio_list">
                                                </span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">Nam
                                                    </span>
                                                </span>
                                                <input type="radio" name="utilitiesCheckbox">
                                                <span class="radio_list">
                                                </span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="box_list" id="room_bathroom">
                                                <span class="title_lis">
                                                    <span class="icon-toilet" style="color: rgb(51, 51, 51); font-size: 20px;"></span>
                                                    <span class="name_lis">Nữ
                                                    </span>
                                                </span>
                                                <input type="radio" name="utilitiesCheckbox">
                                                <span class="radio_list">
                                                </span>
                                            </label>
                                        </li>
                                    </ul>
                                </li>

                            </ul>
                            <div class="title_filter bottom">
                                <div class="btn_fil">
                                    <div class="btn_">
                                        <span>Áp dụng</span>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="col col-lg-8 col-12 col-md-12 phong-moi">

                    <div class="widget">
                        <div class="widget-title">
                            <h3>Phòng mới nhất</h3>
                            <a href="#" class="">Xem tất cả</a>
                        </div>
                        <div class="widget-content">
                            <!-- Bài 1 -->
                            <div class="row">
                                <div class="col col-lg-3 col-md-4 col-12">
                                    <img src="https://bayleaf.s3.amazonaws.com/property-images%2F1567959299630_IMG_1417.JPG" alt="">
                                </div>
                                <div class="col col-lg-9 col-md-8 col-12">
                                    <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                    <div>
                                        <div class="left">
                                            <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                            </div>
                                            <div>
                                                <i class="fal fa-user-friends"></i> <span style="margin-right: 30px;">Nam & Nữ</span>
                                                <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                            </div>
                                            <div><i class="fal fa-map-marked-alt"></i> <span class="str_add">65/7/8 Trần Văn Dư,
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
                                    <img src="https://bayleaf.s3.amazonaws.com/property-images%2F1567959299630_IMG_1417.JPG" alt="">
                                </div>
                                <div class="col col-lg-9 col-md-8 col-12">
                                    <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                    <div>
                                        <div class="left">
                                            <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                            </div>
                                            <div>
                                                <i class="fal fa-user-friends"></i> <span style="margin-right: 30px;">Nam & Nữ</span>
                                                <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                            </div>
                                            <div><i class="fal fa-map-marked-alt"></i> <span class="str_add">65/7/8 Trần Văn Dư,
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
                                    <img src="https://bayleaf.s3.amazonaws.com/property-images%2F1567959299630_IMG_1417.JPG" alt="">
                                </div>
                                <div class="col col-lg-9 col-md-8 col-12">
                                    <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                    <div>
                                        <div class="left">
                                            <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                            </div>
                                            <div>
                                                <i class="fal fa-user-friends"></i> <span style="margin-right: 30px;">Nam & Nữ</span>
                                                <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                            </div>
                                            <div><i class="fal fa-map-marked-alt"></i> <span class="str_add">65/7/8 Trần Văn Dư,
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
                            <div class="row">
                                <div class="col col-lg-3 col-md-4 col-12">
                                    <img src="https://bayleaf.s3.amazonaws.com/property-images%2F1567959299630_IMG_1417.JPG" alt="">
                                </div>
                                <div class="col col-lg-9 col-md-8 col-12">
                                    <h4>Phòng dịch vụ sáng đẹp giá mềm Trần Văn Dư, Quận Tân Bình</h4>
                                    <div>
                                        <div class="left">
                                            <div><i class="fal fa-home-lg-alt"></i> <span>Phòng cho thuê</span>
                                            </div>
                                            <div>
                                                <i class="fal fa-user-friends"></i> <span style="margin-right: 30px;">Nam & Nữ</span>
                                                <i class="fal fa-ruler"></i> <span>29m<sup>2</sup></span>
                                            </div>
                                            <div><i class="fal fa-map-marked-alt"></i> <span class="str_add">65/7/8 Trần Văn Dư,
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
                            <div class="text-center mt-4 pb-4">
                                <div id="main-content">
                                    <div id="pressPageNav">

                                        <div class="pageNavBtn firstBtn">
                                            <span>
                                                first </span>
                                        </div>

                                        <div class="pageNavBtn nextPrevBtn">
                                            <span>prev</span>
                                        </div>

                                        <div class="pageNavBtn middleBtn">
                                            <span>1</span>
                                        </div>

                                        <div class="pageNavBtn middleBtn">
                                            <span>2</span>
                                        </div>

                                        <div class="pageNavBtn middleBtn">
                                            <span>3</span>
                                        </div>

                                        <div class="pageNavBtn middleBtn">
                                            <span>4</span>
                                        </div>

                                        <div class="pageNavBtn middleBtn">
                                            <span>5</span>
                                        </div>

                                        <div class="pageNavBtn nextPrevBtn">
                                            <span>next</span>
                                        </div>

                                        <div class="pageNavBtn lastBtn">
                                            <span>last</span>
                                        </div>
                                    </div>
                                </div>

                                <!-- <ul class="pagination">
                                <li><a href="#" class="prev">
                                        < Prev</a>
                                </li>
                                <li class="pageNumber active"><a href="#">1</a></li>
                                <li class="pageNumber"><a href="#">2</a></li>
                                <li class="pageNumber"><a href="#">3</a></li>
                                <li class="pageNumber"><a href="#">4</a></li>
                                <li class="pageNumber"><a href="#">5</a></li>
                                <li class="pageNumber"><a href="#">6</a></li>
                                <li><a href="#" class="next">Next ></a></li>
                            </ul> -->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main>
@endsection
@push('script')
<script src="{{ asset('public/js/blog_list.js') }}"></script>

@endpush