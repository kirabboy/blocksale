@extends('admin.layouts.master')
@section('title')
@endsection
@push('css')
@endpush
@section('content')
    <div class="content-wrapper">
        <div class="row p-2">
            <div class="col-12">
                <a class="btn btn-success text-uppercase" style="width: 100%">
                    BÁO CÁO TỶ LỆ LẤP ĐẦY</a>
            </div>
            <div class="col-12 col-sm-6 text-center">
                <canvas id="pieChart"
                    style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                <div class="pt-3"></div>
                <a class="btn btn-white">Tỷ lệ lấp đầy</a>
            </div>
            <div class="col-12 col-sm-6 text-center">
                <canvas id="pieChart2"
                    style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                <div class="pt-3"></div>
                <a class="btn btn-white">Tỷ lệ hợp đồng</a>
            </div>
        </div>

    </div>
@endsection
@push('script')
    <script src="{{ asset('public/admin/js/home.js') }}"></script>
@endpush
