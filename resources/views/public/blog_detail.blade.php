@extends('public.layouts.master')
@section('title')
    Chi tiết căn hộ
@endsection
@push('css')
    <link rel="stylesheet" href="{{ asset('public/css/blog_detail.css') }}">
@endpush
@section('content')
    <main>
        <section class="detail-home">
            <div class="slider-section">
                <div id="carousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel" data-slide-to="1"></li>
                        <li data-target="#carousel" data-slide-to="2"></li>
                    </ol> <!-- End of Indicators -->

                    <!-- Carousel Content -->
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active"
                            style="background-image: url('https://cdn.pixabay.com/photo/2020/04/03/15/27/flower-meadow-4999277_960_720.jpg');">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Amazon Forest</h3>
                                <p>Cool description for Amazon Forest.</p>
                            </div>
                        </div> <!-- End of Carousel Item -->

                        <div class="carousel-item"
                            style="background-image: url('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg');">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Bridge Picture</h3>
                                <p>Awesome description for bridge.</p>
                            </div>
                        </div> <!-- End of Carousel Item -->

                        <div class="carousel-item"
                            style="background-image: url('https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736875_960_720.jpg');">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Flowers & Grass</h3>
                                <p>Beauty of Flowers & Grass.</p>
                            </div>
                        </div> <!-- End of Carousel Item -->
                    </div> <!-- End of Carousel Content -->

                    <!-- Previous & Next -->
                    <a href="#carousel" class="carousel-control-prev" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only"></span>
                    </a>
                    <a href="#carousel" class="carousel-control-next" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only"></span>
                    </a>
                </div> <!-- End of Carousel -->
            </div> <!-- End of Slider -->
            <div class="container">
                <div class="title">
                    <div class="title-detail">
                        <h1 itemprop="name" class="name_home">Phòng cho thuê Nguyễn Sỹ Sách, Quận Tân Bình</h1>
                        <div>
                            <div class="share_btn">
                                <!-- <span class="icon-external" style="color: rgb(255, 255, 255); font-size: 24px;"></span> -->
                                <span class="share_item">Chia sẻ</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <span style="color: rgb(102, 102, 102);">
                        <a href="#/" style="color: rgb(72, 119, 248);">HCM</a>
                        <span class="icon-a-right"
                            style="color: rgb(102, 102, 102); font-size: 14px; margin-left: 10px; margin-right: 10px;">
                        </span>
                    </span>
                    <span style="color: rgb(102, 102, 102);"><a href="#/result/Tân-Bình/1"
                            style="color: rgb(72, 119, 248);">Tân Bình</a>
                        <span class="icon-a-right"
                            style="color: rgb(102, 102, 102); font-size: 14px; margin-left: 10px; margin-right: 10px;"></span></span>
                    <span style="color: rgb(102, 102, 102);">Nguyễn Sỹ Sách</span>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-lg-7 col-12">
                            <div class="box_room">
                                <div class="room_info">
                                    <div class="title_info">
                                        <div class="_2-dFY"><span class="icon-nav-home-fill"
                                                style="color: rgb(247, 52, 134); font-size: 32px;"></span></div>
                                        <span class="title">Thông tin phòng</span>
                                    </div>
                                    <div class="room_detail">
                                        <div class="detail_item">
                                            <p>Giá phòng</p>
                                            <p>2,200,000 đồng</p>
                                        </div>
                                        <div class="detail_item">
                                            <p>Diện tích</p>
                                            <p>20 mét vuông</p>
                                        </div>
                                        <div class="detail_item">
                                            <p>Đặt cọc</p>
                                            <p>2,000,000 đồng</p>
                                        </div>
                                        <div class="detail_item">
                                            <p>Sức chứa</p>
                                            <p>3 Nam hoặc Nữ</p>
                                        </div>
                                    </div>
                                    <div class="room_detail">
                                        <div class="detail_item">
                                            <p>Giá phòng</p>
                                            <p>2,200,000 đồng</p>
                                        </div>
                                        <div class="detail_item">
                                            <p>Diện tích</p>
                                            <p>20 mét vuông</p>
                                        </div>
                                        <div class="detail_item">
                                            <p>Đặt cọc</p>
                                            <p>2,000,000 đồng</p>
                                        </div>
                                        <div class="detail_item">
                                            <p>Sức chứa</p>
                                            <p>3 Nam hoặc Nữ</p>
                                        </div>
                                    </div>
                                    <div class="room_address">
                                        <p>Điạ chỉ</p>
                                        <p itemprop="address">70/15A Nguyễn Sỹ Sách, Phường 15, Quận Tân Bình, Hồ Chí Minh
                                        </p>
                                    </div>
                                </div>
                                <div class="room_info">
                                    <div class="title_info">
                                        <div class="_2-dFY"><span class="icon-nav-home-fill"
                                                style="color: rgb(247, 52, 134); font-size: 32px;"></span></div>
                                        <span class="title">Tiện ích</span>
                                    </div>
                                    <div class="room_utilities">
                                        <div class="ultilities">
                                            <div class="item"><span class="icon-toilet"></span><span
                                                    itemprop="name">WC riêng</span></div>
                                            <div class="item"><span class="icon-parking"></span><span
                                                    itemprop="name">Chổ để xe</span></div>
                                            <div class="item"><span class="icon-wifi"></span><span
                                                    itemprop="name">Wifi</span></div>
                                            <div class="item"><span class="icon-time"></span><span
                                                    itemprop="name">Tự do</span></div>
                                            <div class="item"><span class="icon-private"></span><span
                                                    itemprop="name">Không chung chủ</span></div>
                                            <div class="item"><span class="icon-security_guard"></span><span
                                                    itemprop="name">Bảo vệ</span></div>
                                            <div class="item"><span class="icon-pets"></span><span
                                                    itemprop="name">Thú cưng</span></div>
                                            <div class="item"><span class="icon-window"></span><span
                                                    itemprop="name">Cửa sổ</span></div>
                                            <div class="item"><span class="icon-loft"></span><span
                                                    itemprop="name">Gác lửng</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="room_info">
                                    <div class="title_info">
                                        <div class="_2-dFY"><span class="icon-nav-home-fill"
                                                style="color: rgb(247, 52, 134); font-size: 32px;"></span></div>
                                        <span class="title">Lưu ý</span>
                                    </div>
                                    <div class="room_note">
                                        <p class="capacity">Sức chứa</p>
                                        <div class="box_capacity">
                                            <div class="item">
                                                <p>Rộng</p>
                                                <div class="_1p"><span>1 nguời</span></div>
                                            </div>
                                            <div class="item">
                                                <p>Vừa</p>
                                                <div class="_2p"><span>2 nguời</span></div>
                                            </div>
                                            <div class="item kTTw8">
                                                <p>Chật</p>
                                                <div class="_3p"><span>3 nguời +</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="room_info">
                                    <div class="title_info">
                                        <div class="_2-dFY"><span class="icon-nav-home-fill"
                                                style="color: rgb(247, 52, 134); font-size: 32px;"></span></div>
                                        <span class="title">Lưu ý</span>
                                    </div>
                                    <div class="room_des">
                                        <p class="des" style="position: relative;">Lorem Ipsum is simply dummy
                                            text of the printing and typesetting industry. Lorem Ipsum has been the
                                            industry's standard dummy text ever since the 1500s, when an unknown printer
                                            took a galley of type and scrambled it to make a type specimen book. It has
                                            survived not only five centuries, but also the leap into electronic typesetting,
                                            remaining essentially unchanged. It was popularised in the 1960s with the
                                            release of Letraset sheets containing Lorem Ipsum passages, and more recently
                                            with desktop publishing software like Aldus PageMaker including versions of
                                            Lorem Ipsum.

                                        <div class="open_grepper_editor" title="Edit &amp; Save To Grepper"></div>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-5 col-12">
                            <div class="room_info">
                                <div class="title_info">
                                    <div class="_2-dFY"><span class="icon-nav-home-fill"
                                            style="color: rgb(247, 52, 134); font-size: 32px;"></span></div>
                                    <span class="title">Lưu ý</span>
                                </div>
                                <div class="room_owner">
                                    <img src="https://s120-ava-talk.zadn.vn/8/e/4/9/6/120/d13ce791022f17cc75ee421bc399c27b.jpg"
                                        alt="avatar" class="_1Ad8s">
                                    <div class="name_owner"><span>Nguyen Van Vi</span>
                                        <div><span>SĐT:&nbsp;</span><span>0903840616</span></div>
                                    </div>
                                    <div class="date_post"><span>Ngày đăng:&nbsp;</span><span>28-03-2022</span></div>

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
@endpush
