<div class="col-lg-3 col-md-4 col-sm-4 col-12">
    <a href="{{ route('admin.building.show', $building['id']) }}">
        <div class="card-building">
            <div class="card-building-header d-flex justify-conent-left">
                <img class="icon-building" src="{{ asset('public/admin/image/house.png') }}" alt="">
                <div class="card-building-header-info">
                    <h4 class="building-name">{{$building['name']}} <i class="fas fa-check-circle"></i></h4>
                    <p class="building-address" tabindex="0" data-bs-toggle="tooltip" title="{{$building['address']}}">
                        {{Str::limit($building['address'], 30)}}</p>
                </div>
            </div>
            <div class="card-building-progress">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: {{ $building['room']['ratio'] }}%;">
                        {{ $building['room']['ratio'] }}%</div>
                </div>
            </div>
            <div class="card-building-body">
                <div class="row">
                    <div class="col-sm-6 ">
                        <div class="d-flex justify-content-left align-items-top line-info-building">
                            <img class="icon-card-building-body" src="{{ asset('public/admin/image/floors.svg') }}">
                            <div class="building-unit-info">
                                <p><b class="unit-number">{{$building['number_floor']}}</b></p>
                                <p><span class="unit-label text-muted">Tổng tầng</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="d-flex justify-content-left align-items-top line-info-building">
                            <img class="icon-card-building-body" src="{{ asset('public/admin/image/units.svg') }}">
                            <div class="building-unit-info">
                                <p><b class="unit-number">{{ $building['total_room'] }}</b></p>
                                <p><span class="unit-label text-muted">Đơn vị thuê</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="d-flex justify-content-left align-items-top line-info-building">
                            <img class="icon-card-building-body" src="{{ asset('public/admin/image/occupancy.svg') }}">
                            <div class="building-unit-info">
                                <p><b class="unit-number">{{ $building['room']['ratio'] }}%</b></p>
                                <p><span class="unit-label text-muted">Lấp đầy</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="d-flex justify-content-left align-items-top line-info-building">
                            <img class="icon-card-building-body" src="{{ asset('public/admin/image/emptyUnits.svg') }}">
                            <div class="building-unit-info">
                                <p><b class="unit-number">{{ $building['room']['empty'] }}</b></p>
                                <p><span class="unit-label text-muted">Trống</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="d-flex justify-content-left align-items-top line-info-building">
                            <img class="icon-card-building-body"
                                src="{{ asset('public/admin/image/rentedUnits.svg') }}">
                            <div class="building-unit-info">
                                <p><b class="unit-number">{{ $building['room']['hired'] }}</b></p>
                                <p><span class="unit-label text-muted">Đã thuê</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 ">
                        <div class="d-flex justify-content-left align-items-top line-info-building">
                            <img class="icon-card-building-body"
                                src="{{ asset('public/admin/image/stoppedUnits.svg') }}">
                            <div class="building-unit-info">
                                <p><b class="unit-number">{{ number_format($building['avg_room']) }}</b></p>
                                <p><span class="unit-label text-muted">Giá trung bình</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </a>
</div>
