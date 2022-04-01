@extends('admin.layouts.master')
@section('title')
    Hợp đồng
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
                            <i class="nav-icon fas fa-paper-plane text-success"></i>
                            Công việc
                        </p>
                    </div>
                    <div class="col-sm-10 text-right">
                        <button class="btn btn-green btn-vien-trai">
                            <i class="fa fa-search"></i> Tải lại</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai">
                            <i class="fa fa-search"></i> Thêm mới</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai">
                            <i class="fa fa-search"></i> Sao chép</button>

                        <p class="m-1 d-sm-none"> </p>

                        <button class="btn btn-green btn-vien-trai btn-vien-phai">
                            <i class="fa fa-search"></i> Chỉnh sửa</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai">
                            <i class="fa fa-search"></i> Tiến độ</button>
                        <button class="btn btn-green btn-vien-trai btn-vien-phai">
                            <i class="fa fa-search"></i> Trạng thái</button>
                        <button class="btn btn-green btn-vien-phai" style="background:rgb(255, 94, 94) !important">
                            <i class="fa fa-trash"></i> Xóa</button>
                    </div>
                </div>
            </div>
        </section>

        <section id="content-main">
            <ul class="nav mb-1 nav_congviec" id="pills-tab" role="tablist" style="border-bottom: dotted 1px #d3d3d3;">
                <li class="nav-item">
                    <a class="nav-link text-14 active" id="pills-tat_ca-tab" data-toggle="pill" href="#pills-tat_ca">
                        Tất cả (6)</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-14" id="pills-moi-tab" data-toggle="pill" href="#pills-moi">
                        Mới (0)</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-14" id="pills-dang_tien_hanh-tab" data-toggle="pill"
                        href="#pills-dang_tien_hanh">
                        Đang tiến hành (0)</a>
                </li>
            </ul>

            <div class="tab-content" id="pills-tabContent">
                <!-- Tab tất cả table -->
                <div class="tab-pane fade show active" id="pills-tat_ca" role="tabpanel" aria-labelledby="pills-tat_ca-tab">
                    <div class="table-responsive table-scrollable">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="pills-tat_ca" role="tabpanel"
                                aria-labelledby="pills-tat_ca-tab">
                                <div class="table-responsive table-scrollable">
                                    <table class="table table-head-custom" id="table_hop_dong" style="width: 2150px;">
                                        <thead>
                                            <tr class="header-table-height">
                                                <th class="no-sort text-12 text-uppercase"
                                                    style="background-image: none !important;">
                                                    <input type="checkbox" name="select-all" id="select-all" />
                                                </th>
                                                <th class="text-12 text-uppercase" style="width: 10px">#</th>
                                                <th class="text-12 text-uppercase" style="width: 10px">Mã</th>
                                                <th class="text-12 text-uppercase" style="width: 80px">TÊN</th>
                                                <th class="text-12 text-uppercase" style="width: 120px">CÔNG VIỆC CHA</th>
                                                <th class="text-12 text-uppercase" style="width: 120px">DỰ ÁN</th>
                                                <th class="text-12 text-uppercase" style="width: 110px">ĐỘ ƯU TIÊN</th>
                                                <th class="text-12 text-uppercase" style="width: 120px">Trạng thái</th>
                                                <th class="text-12 text-uppercase" style="width: 80px">TIẾN ĐỘ</th>
                                                <th class="text-12 text-uppercase" style="width: 150px">NGƯỜI THEO DÕI</th>
                                                <th class="text-12 text-uppercase" style="width: 150px">NGÀY BẮT ĐẦU</th>
                                                <th class="text-12 text-uppercase" style="width: 150px">NGÀY HẾT HẠN</th>
                                                <th class="text-12 text-uppercase" style="width: 150px">THỜI GIAN CÒN LẠI
                                                </th>
                                                <th class="text-12 text-uppercase" style="width: 150px">NGÀY HOÀN THÀNH</th>
                                                <th class="text-12 text-uppercase" style="width: 150px">NGƯỜI THỰC HIỆN</th>
                                            </tr>
                                        </thead>
                                        <tfoot style="display: table-header-group">
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th class="yes">Mã</th>
                                                <th class="yes">Tên</th>
                                                <th>
                                                    <select class="custom-select" id="select_cong_viec_cha">
                                                        <option selected>--Tất cả--</option>
                                                        <option value="1">One</option>
                                                        <option value="2">Two</option>
                                                        <option value="3">Three</option>
                                                    </select>
                                                </th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th class="yes">Tiến độ</th>
                                                <th class="yes">Người theo dõi</th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td>...</td>
                                                <td>CV000001</td>
                                                <td>Thuê công nhân</td>
                                                <td>Do sth</td>
                                                <td>Đốt nhà</td>
                                                <td>Bình thường</td>
                                                <td>
                                                    <p class="m-0 text-12 label label-light-success" style="width:100%">Đã
                                                        được giải quyết</p>
                                                </td>
                                                <td>100%</td>
                                                <td></td>
                                                <td>11:31:00 01-11-2021</td>
                                                <td>11:32:00 02-11-2021</td>
                                                <td></td>
                                                <td>11:36:00 02-11-2021</td>
                                                <td>TRƯƠNG THỊ QUẾ ANH</td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>...</td>
                                                <td>CV000002</td>
                                                <td>Thuê thợ</td>
                                                <td>Do sth</td>
                                                <td>Phủ sơn tòa nhà</td>
                                                <td>Bình thường</td>
                                                <td>
                                                    <p class="m-0 text-12 label label-light-success" style="width:100%">Đã
                                                        được giải quyết</p>
                                                </td>
                                                <td>100%</td>
                                                <td></td>
                                                <td>11:31:00 01-11-2021</td>
                                                <td>11:32:00 02-11-2021</td>
                                                <td></td>
                                                <td>11:36:00 02-11-2021</td>
                                                <td>TRƯƠNG THỊ QUẾ ANH</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- End tab tất cả table -->
                <div class="tab-pane fade" id="pills-moi" role="tabpanel" aria-labelledby="pills-moi-tab">
                    2
                </div>
                <div class="tab-pane fade" id="pills-dang_tien_hanh" role="tabpanel"
                    aria-labelledby="pills-dang_tien_hanh-tab">
                    3
                </div>
            </div>
        </section>



        <p class="p-5"></p>
    </div>
@endsection
@push('script')
    <script src="{{ asset('public/admin/js/contract.js') }}"></script>
@endpush
