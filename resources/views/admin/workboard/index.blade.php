@extends('admin.layouts.master')
@section('title')
    Bàn làm việc
@endsection
@push('css')
@endpush
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header" style="border-bottom: 1px solid #d3d3d3; padding-bottom: 15px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2">
                        <p class="m-0" style="line-height: 40px; font-size: 14px;">
                            <i class="nav-icon fas fa-circle text-success"></i>
                            Bàn làm việc
                        </p>
                    </div>
                    <div class="col-sm-2 text-right">
                        <select id="select_homies" style="width: 170px">
                            <option value="H1">Homies 1</option>
                            <option value="H2">Homies 2</option>
                        </select>
                    </div>
                    <div class="col-sm-8 text-right">
                        <button class="btn btn-green btn-vien-trai">
                            <i class="fa fa-search"></i> Tạo hợp đồng</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai" data-toggle="modal"
                            data-target=".coc_giu_cho">
                            <i class="fa fa-search"></i> Cọc giữ chỗ</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai" data-toggle="modal"
                            data-target=".coc_giu_cho">
                            <i class="fa fa-search"></i> Ghi chi số</button>

                        <p class="m-1 d-sm-none"> </p>

                        <button class="btn btn-green btn-vien-trai btn-vien-phai" data-toggle="modal"
                            data-target=".coc_giu_cho">
                            <i class="fa fa-search"></i> Xuất hóa đơn</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai" data-toggle="modal"
                            data-target=".coc_giu_cho">
                            <i class="fa fa-search"></i> Trả phòng</button>
                        <button class="btn btn-green btn-vien-phai" data-toggle="modal" data-target=".coc_giu_cho">
                            <i class="fa fa-search"></i> Chuyển phòng</button>

                        <p class="m-1 d-sm-none"> </p>

                        <button class="btn btn-green" style="padding: 6px 15px;">
                            ...</button>
                        <button class="btn btn-green btn-vien-trai" style="padding: 9px 15px">
                            <i class="fa fa-search"></i></button>
                        <button class="btn btn-green btn-vien-phai"
                            style="padding: 9px 15px; background-color: #ffa800 !important;">
                            <i class="fa fa-search"></i></button>
                    </div>
                </div>
            </div>
        </section>
        <section class="p-2">
            <!-- Card body start -->
            <div class="card-body">
                <div class="card-group">
                    <div class="card p-2">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 col-sm-12">
                                    <div class="row">
                                        <div class="col-12 pb-2" style="border-bottom: 1px solid #d3d3d3;">
                                            <p class="text-muted m-0 text-14">
                                                <i class="fa fa-map"></i> 193 Trần Hưng Đạo
                                            </p>
                                        </div>
                                        <div class="col-12 pt-2">
                                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                                <li class="nav-item pr-2" role="presentation">
                                                    <button class="btn btn-primary p-1 text-14" id="pills-home-tab"
                                                        data-bs-toggle="pill" data-bs-target="#tab_tat_ca" type="button"
                                                        role="tab" aria-controls="tab_tat_ca" aria-selected="true">
                                                        Tất cả (44)</button>
                                                </li>
                                                <li class="nav-item pr-2" role="presentation">
                                                    <button class="btn btn-warning p-1 text-14" id="pills-profile-tab"
                                                        data-bs-toggle="pill" data-bs-target="#pills-profile" type="button"
                                                        role="tab" aria-controls="pills-profile" aria-selected="false">
                                                        Đã thuê (24)</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="btn btn-danger p-1 text-14" id="pills-contact-tab"
                                                        data-bs-toggle="pill" data-bs-target="#pills-contact" type="button"
                                                        role="tab" aria-controls="pills-contact" aria-selected="false">
                                                        Trống (20)</button>
                                                </li>
                                                <li>
                                                    <div class="progress d-none-mobile"
                                                        style="width: 100%; margin-top: 10px; margin-left: 180px;">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: 20%" aria-valuenow="100" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <!-- Tab content start here -->
                                            <div class="tab-content" id="pills-tabContent">
                                                <div class="tab-pane fade show active" id="tab_tat_ca">
                                                    <div class="row pb-2">
                                                        <div class="col-6 col-sm-3">
                                                            <div class="card p-2">
                                                                <h6>Tầng 1</h6>
                                                                <button class="btn btn-success p-1 text-12"
                                                                    style="width: 25% !important" data-toggle="modal"
                                                                    data-target=".bd-example-modal-lg" id="pills-home"
                                                                    role="tabpanel" aria-labelledby="pills-home-tab">
                                                                    <i class="fa fa-plus"></i></button>
                                                                <p class="border-bottom pt-2 m-0"></p>
                                                                <div class="progress"
                                                                    style="width: 100%; margin-top: 10px;">
                                                                    <div class="progress-bar bg-success" role="progressbar"
                                                                        style="width: 20%" aria-valuenow="100"
                                                                        aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-9">
                                                            <div class="row">
                                                                <div class="col-6 col-sm-3">
                                                                    <div class="card p-2">
                                                                        <h6>Tầng 1</h6>
                                                                        <p class="border-bottom m-0"></p>
                                                                        <button class="btn btn-success p-1 text-12">P.
                                                                            101</button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-6 col-sm-3">
                                                                    <div class="card p-2">
                                                                        <h6>Tầng 1</h6>
                                                                        <p class="border-bottom m-0"></p>
                                                                        <button class="btn btn-success p-1 text-12">P.
                                                                            102</button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-6 col-sm-3">
                                                                    <div class="card p-2">
                                                                        <h6>Tầng 1</h6>
                                                                        <p class="border-bottom m-0"></p>
                                                                        <button class="btn btn-success p-1 text-12">P.
                                                                            103</button>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div class="row pb-2">
                                                        <div class="col-6 col-sm-3">
                                                            <div class="card p-2">
                                                                <h6>Tầng 2</h6>

                                                                <button class="btn btn-success p-1 text-12"
                                                                    style="width: 25% !important" data-toggle="modal"
                                                                    data-target=".bd-example-modal-lg" id="pills-home"
                                                                    role="tabpanel" aria-labelledby="pills-home-tab">
                                                                    <i class="fa fa-plus"></i></button>
                                                                <p class="border-bottom pt-2 m-0"></p>
                                                                <div class="progress"
                                                                    style="width: 100%; margin-top: 10px;">
                                                                    <div class="progress-bar bg-success" role="progressbar"
                                                                        style="width: 20%" aria-valuenow="100"
                                                                        aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-9">
                                                            <div class="row">
                                                                <div class="col-6 col-sm-3">
                                                                    <div class="card p-2">
                                                                        <h6>Tầng 2</h6>
                                                                        <p class="border-bottom m-0"></p>
                                                                        <button class="btn btn-success p-1 text-12">P.
                                                                            201</button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-6 col-sm-3">
                                                                    <div class="card p-2">
                                                                        <h6>Tầng 2</h6>
                                                                        <p class="border-bottom m-0"></p>
                                                                        <button class="btn btn-success p-1 text-12">P.
                                                                            202</button>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                                    aria-labelledby="pills-profile-tab">1</div>
                                                <div class="tab-pane fade" id="pills-contact" role="tabpanel"
                                                    aria-labelledby="pills-contact-tab">.2</div>
                                            </div>
                                            <!-- Tab content End here -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <nav>
                            <div class="nav nav-tabs" id="tab_card_banlamviec" role="tablist">
                                <button class="nav-link active text-14" id="don_vi_thue" data-bs-toggle="tab"
                                    data-bs-target="#nav_don_vi_thue" type="button" role="tab">
                                    Đơn vị thuê</button>
                                <button class="nav-link text-14" id="tai_san" data-bs-toggle="tab"
                                    data-bs-target="#nav_tai_san" type="button" role="tab">
                                    Tài sản</button>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <!-- Tab đơn vị thuê -->
                            <div class="p-2 tab-pane fade show active" id="nav_don_vi_thue">
                                <!-- Tab thông tin đơn vị thuê-->
                                <nav>
                                    <div class="nav nav-tabs" id="tab_child_banlamviec_1" role="tablist">
                                        <button class="nav-link active text-14" id="don_vi_thue" data-bs-toggle="tab"
                                            data-bs-target="#nav_thong_tin_don_vi_thue" type="button" role="tab">
                                            Thông tin đơn vị thuê</button>
                                    </div>
                                </nav>
                                <div class="tab_thong_tin_dv" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="nav_thong_tin_don_vi_thue">
                                        <div class="row pt-2">
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14">Tên đơn vị thuê</p>
                                                <p class="m-0 mb-2 text-14">Giá</p>
                                                <p class="m-0 mb-2 text-14">Trạng thái</p>
                                                <p class="m-0 mb-2 pt-1 text-14">Mục đích thuê</p>
                                            </div>
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14"><strong>P.102</strong></p>
                                                <p class="m-0 mb-2 text-14 text-success">3,500,000</p>
                                                <p class="m-0 mb-2 text-14 label label-light-success">Đã thuê</p>
                                                <p class="m-0 mb-2 text-14 label label-light-success">Cho thuê</p>
                                            </div>
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14">Mã</p>
                                                <p class="m-0 mb-2 text-14">Tiền cọc</p>
                                                <p class="m-0 mb-2 text-14">Trạng thái hợp đồng</p>
                                            </div>
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14"><strong>CH000002</strong></p>
                                                <p class="m-0 mb-2 text-14 text-success">3,000,000</p>
                                                <p class="m-0 mb-2 text-14 label label-light-success">Hiệu lực</p>
                                            </div>
                                            <div class="col-12 pb-2">
                                                <button class="btn btn-white text-12 text-dark">
                                                    <i class="fa fa-search"></i> Giường
                                                </button>
                                                <button class="btn btn-white text-12 text-dark">
                                                    <i class="fa fa-search"></i> Tủ sách
                                                </button>
                                                <button class="btn btn-white text-12 text-dark">
                                                    <i class="fa fa-search"></i> Tủ
                                                </button>
                                                <p class="m-1 d-sm-none"> </p>
                                                <button class="btn btn-white text-12 text-dark">
                                                    <i class="fa fa-search"></i> Thang máy
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End tab thông tin đơn vị thuê-->
                                <p class="m-2"> </p>
                                <nav>
                                    <div class="nav nav-tabs" id="nav-tab-hop-dong-thue" role="tablist">
                                        <button class="nav-link active text-14" id="hop_dong_thue" data-bs-toggle="tab"
                                            data-bs-target="#nav_hop_dong_thue" type="button" role="tab">
                                            Hợp đồng thuê</button>
                                        <button class="nav-link text-14" id="dat_coc_giu_cho" data-bs-toggle="tab"
                                            data-bs-target="#nav_dat_coc_giu_cho" type="button" role="tab">
                                            Đặt cọc giữ chỗ</button>
                                        <button class="nav-link text-14" id="lich_su_hop_dong" data-bs-toggle="tab"
                                            data-bs-target="#nav_lich_su_hop_dong" type="button" role="tab">
                                            Lịch sử hợp đồng</button>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="nav_hop_dong_thue">
                                        <div class="row pt-2">
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14">Tên hợp đồng</p>
                                                <p class="m-0 mb-2 text-14">Loại hợp đồng</p>
                                                <p class="m-0 mb-2 text-14">Thời gian bắt đầu</p>
                                                <p class="m-0 mb-2 pt-1 text-14">Đặt cọc</p>
                                            </div>
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14"><strong>Hợp đồng thuê 102</strong></p>
                                                <p class="m-0 mb-2 text-14 label label-light-success">Thuê</p>
                                                <p class="m-0 mb-2 text-14 text-success">21:38:00 01-07-2021</p>
                                                <p class="m-0 mb-2 text-14 label label-light-success">Đang cọc</p>
                                            </div>
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14">Mã</p>
                                                <p class="m-0 mb-2 text-14 text-white">_</p>
                                                <p class="m-0 mb-2 text-14">Thời gian kết thúc</p>
                                                <p class="m-0 mb-2 text-14">Trạng thái</p>
                                                <p class="m-0 mb-2 text-14 pt-1">Số tiền</p>
                                            </div>
                                            <div class="col-6 col-sm-3">
                                                <p class="m-0 mb-2 text-14 text-success">
                                                    <strong>HDG000003/202112/FHSR/HĐT</strong>
                                                </p>
                                                <p class="m-0 mb-2 text-14 text-success pt-2">21:38:00 01-07-2021</p>
                                                <p class="m-0 mb-2 text-14 label label-light-success">Hiệu lực</p>
                                                <p class="m-0 mb-2 text-14 text-success">3,000,000</p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="nav_dat_coc_giu_cho">
                                        <p> </p>
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-12 col-sm-8">
                                                        <h5>Đơn vị thuê trống</h5>
                                                        <p class="text-muted text-14 m-0">
                                                            Đơn vị thuê không có cọc giữ chỗ, bạn có thể nhận cọc mới
                                                        </p>
                                                    </div>
                                                    <div class="col-12 col-sm-4 text-center">
                                                        <p class="m-2"> </p>
                                                        <button class="btn btn-success text-12">
                                                            <i class="fa fa-plus-circle"></i> Nhận cọc giữ chỗ
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade show" id="nav_lich_su_hop_dong">
                                        <p> </p>
                                        <div class="table-responsive table-scrollable">
                                            <table class="table table-head-custom" style="width: 1000px;">
                                                <thread>
                                                    <tr class="header-table-height" kt-hidden-height="27">
                                                        <th class="text-12 text-uppercase">#</th>
                                                        <th class="text-12 text-uppercase">Mã</th>
                                                        <th class="text-12 text-uppercase">Loại hợp đồng</th>
                                                        <th class="text-12 text-uppercase">Số hợp đồng</th>
                                                        <th class="text-12 text-uppercase">Thời gian bắt đầu</th>
                                                        <th class="text-12 text-uppercase">Thời gian kết thúc</th>
                                                        <th class="text-12 text-uppercase">Trạng thái</th>
                                                    </tr>
                                                </thread>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>HDG000001</td>
                                                        <td>Thuê</td>
                                                        <td>HDG000003/202112/FHSR/HĐT</td>
                                                        <td>01-07-2021 21:38:00</td>
                                                        <td>01-07-2021 21:38:00</td>
                                                        <td>
                                                            <p class="m-0 text-12 label label-light-success"
                                                                style="width:100%">Hiệu lực</p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>HDG000002</td>
                                                        <td>Thuê</td>
                                                        <td>HDG000003/202112/FHSR/HĐT</td>
                                                        <td>01-07-2021 21:38:00</td>
                                                        <td>01-07-2021 21:38:00</td>
                                                        <td>
                                                            <p class="m-0 text-12 label label-light-success"
                                                                style="width:100%">Hiệu lực</p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>HDG000003</td>
                                                        <td>Thuê</td>
                                                        <td>HDG000003/202112/FHSR/HĐT</td>
                                                        <td>01-07-2021 21:38:00</td>
                                                        <td>01-07-2021 21:38:00</td>
                                                        <td>
                                                            <p class="m-0 text-12 label label-light-success"
                                                                style="width:100%">Hiệu lực</p>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End tab đơn vị thuê -->


                            <!-- Tab tài sản -->
                            <div class="tab-pane fade" id="nav_tai_san">
                                <div class="row pt-2">
                                    <div class="col-12 text-center">
                                        <h5 class="text-success">DANH SÁCH TÀI SẢN ĐƯỢC CẤP</h5>
                                    </div>
                                    <div class="col-12">
                                        <div class="table-responsive table-scrollable p-2">
                                            <table class="table table-head-custom">
                                                <thread>
                                                    <tr class="header-table-height" kt-hidden-height="27">
                                                        <th class="text-12 text-uppercase">#</th>
                                                        <th class="text-12 text-uppercase">TÊN</th>
                                                        <th class="text-12 text-uppercase">MÃ</th>
                                                        <th class="text-12 text-uppercase">NGUỒN</th>
                                                        <th class="text-12 text-uppercase">SỐ LƯỢNG</th>
                                                    </tr>
                                                </thread>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Bàn ăn Verona</td>
                                                        <td>TS000001</td>
                                                        <td>Kho Thanh Xuân</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>Bàn ăn Verona</td>
                                                        <td>TS000002</td>
                                                        <td>Kho Thanh Xuân</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>Bàn ăn Verona</td>
                                                        <td>TS000003</td>
                                                        <td>Kho Thanh Xuân</td>
                                                        <td>2</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Tab tài sản -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <p class="p-5"></p>
    </div>
@endsection
@push('script')
    <script src="{{ asset('public/admin/js/workboard.js') }}"></script>
@endpush
