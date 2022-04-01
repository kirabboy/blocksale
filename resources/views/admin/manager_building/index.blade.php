@extends('admin.layouts.master')
@section('title')
    Quản trị cơ sở
@endsection
@push('css')
@endpush
@section('content')
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Bảng quản trị</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">

                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <div class="row p-2">
            <div class="col-12 col-sm-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <img src="{{ asset('public/admin/image/house.png')}}" width="100%">
                            </div>
                            <div class="col-sm-9">
                                <h4 class="card-title">Homies 01</h5><br>
                                    <h6 class="text-muted">193 Trần Hưng Đạo</h6>
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar bg-success w-75" role="progressbar" aria-valuenow="75"
                                aria-valuemin="0" aria-valuemax="100"></div>
                        </div>

                        <div class="row pt-2">
                            <div class="col-6">
                                <div class="row pb-2">
                                    <div class="col-5">
                                        <img src="{{ asset('public/admin/image/floors.svg')}}">
                                    </div>
                                    <div class="col-7">
                                        <h5 class="m-0"><strong>10</strong></h5>
                                        <a class="text-muted" style="font-size: 12px;">Tổng tầng</a>
                                    </div>
                                </div>
                                <div class="row pb-2">
                                    <div class="col-5">
                                        <img src="{{ asset('public/admin/image/occupancy.svg')}}">
                                    </div>
                                    <div class="col-7">
                                        <h5 class="m-0"><strong>18.18%</strong></h5>
                                        <a class="text-muted" style="font-size: 12px;">Lấp đầy</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-5">
                                        <img src="{{ asset('public/admin/image/rentedUnits.svg') }}">
                                    </div>
                                    <div class="col-7">
                                        <h5 class="m-0"><strong>8</strong></h5>
                                        <a class="text-muted" style="font-size: 12px;">Đã thuê</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="row pb-2">
                                    <div class="col-5">
                                        <img src="{{ asset('public/admin/image/units.svg') }}">
                                    </div>
                                    <div class="col-7">
                                        <h5 class="m-0"><strong>44</strong></h5>
                                        <a class="text-muted" style="font-size: 12px;">Đơn vị thuê</a>
                                    </div>
                                </div>
                                <div class="row pb-2">
                                    <div class="col-5">
                                        <img src="{{ asset('public/admin/image/emptyUnits.svg') }}">
                                    </div>
                                    <div class="col-7">
                                        <h5 class="m-0"><strong>36</strong></h5>
                                        <a class="text-muted" style="font-size: 12px;">Trống</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-5">
                                        <img src="{{ asset('public/admin/image/stoppedUnits.svg') }}">
                                    </div>
                                    <div class="col-7">
                                        <h6 class="m-0"><strong>3,625,000</strong></h6>
                                        <a class="text-muted" style="font-size: 12px;">Giá trung bình</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('script')
    <script src="{{ asset('public/admin/js/index.js') }}"></script>
@endpush
