@extends('admin.layouts.master')
@section('title', 'Quản trị cơ sở')

@push('css')
<link rel="stylesheet" href="{{ asset('public/admin/css/building.css') }}">
@endpush

@section('content')

<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between align-items-center">
        <h3 class="page-title">
            <a href="javascript:history.back()">
                <i class="fas fa-chevron-left"></i> {{ $building['name'] }}
            </a>
        </h3>
        <div class="page-header-tool">
            <span class="mr-3 d-flex align-items-center font-weight-bold">Tỷ lệ lấp đầy ({{ $building['ratio'] }}%)</span>
            <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                    class="fas fa-circle text-danger mr-2"></i>Trống ({{ $building['empty'] }})</span>
            <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                    class="fas fa-circle text-success mr-2"></i>Đã thuê ({{ $building['hired'] }})</span>
            <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                    class="fas fa-circle text-secondary mr-2"></i>Tạm ngưng ({{ $building['unactive'] }})</span>
            <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                    class="fas fa-circle text-warning mr-2"></i>Đã đặt cọc ({{ $building['booked'] }})</span>
        </div>
    </div>
    <div class="row p-4 bg-white" id="after-submit">
        <div class="floor col-12">
            @foreach($building['floor'] as $item)
            <div class="d-flex justify-content-between">
                <span class="name mr-5 d-flex align-items-center font-size-h5 font-weight-bold">
                    <i class="fas fa-layer-group mr-2"></i> {{ $item['name'] }}
                </span>
                <div class="d-flex">
                    <span class="mr-3 d-flex align-items-center font-weight-bold">Tỷ lệ lấp đầy ({{ round($item['ratio'], 2) }}%)</span>
                    <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                            class="fas fa-circle text-danger mr-2"></i>{{ $item['empty'] }}/{{ $item['total'] }}</span>
                    <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                            class="fas fa-circle text-success mr-2"></i>{{ $item['hired'] }}/{{ $item['total'] }}</span>
                    <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                            class="fas fa-circle text-secondary mr-2"></i>{{ $item['unactive'] }}/{{ $item['total'] }}</span>
                    <span class="mr-3 d-flex align-items-center font-weight-bold"><i
                            class="fas fa-circle text-warning mr-2"></i>{{ $item['booked'] }}/{{ $item['total'] }}</span>
                </div>
            </div>
            <div class="room d-flex justify-content-start align-items-center mt-2">
                @foreach($item['room'] as $item)
                <div class="item {{ bgStatus($item['status']) }}" data-bs-toggle="tooltip" data-bs-placement="top" title="{{ $item['name'] }}"></div>
                @endforeach
            </div>

            <hr>
            @endforeach
        </div>
    </div>
</div>

@endsection

@push('script')
<!-- <script src="{{ asset('public/admin/js/home.js') }}"></script> -->
<script src="{{ asset('public/admin/js/building.js') }}"></script>
<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl, {
    'customClass': 'custom-tooltip'
  })
})
</script>
@endpush
