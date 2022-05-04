<nav>
    <div class="nav nav-tabs" id="nav-tab-hop-dong-thue" role="tablist">
        <button class="nav-link active text-14" id="hop_dong_thue" data-bs-toggle="tab" data-bs-target="#chi-so-cong-to"
            type="button" role="tab">
            Chỉ số công tơ</button>
        <button class="nav-link text-14" id="dat_coc_giu_cho" data-bs-toggle="tab" data-bs-target="#lich-su-cong-to"
            type="button" role="tab">
            Lịch sử công tơ</button>
    </div>
</nav>
<div class="tab-content p-2" id="nav-tabContent">
    <div class="tab-pane fade show active" id="chi-so-cong-to">
        <div class="p-2">
            <button class="btn-create-room btn btn-success p-1 text-12" onclick="createContractService(this)"
            data-url="{{route('chi-so-dich-vu.create')}}"
            data-id_contract="{{ $current_contract->id }}">Thêm chỉ số</button>
        </div>

        <div class="table-responsive table-scrollable">
            <table class="table table-head-custom">
                <thead>
                    <th class="text-12 text-uppercase">#</th>
                    <th class="text-12 text-uppercase">Loại công tơ</th>
                    <th class="text-12 text-uppercase">Số đầu</th>
                    <th class="text-12 text-uppercase">Số cuối</th>
                    <th class="text-12 text-uppercase">Tiêu thụ</th>
                    <th class="text-12 text-uppercase">Tháng</th>
                    <th class="text-12 text-uppercase">Năm</th>
                    <th class="text-12 text-uppercase">Ngày nhập</th>
                    <th class="text-12 text-uppercase">Trạng thái</th>
                    <th class="text-12 text-uppercase">Ngày chốt</th>
                </thead>
                <tbody>
                    @foreach ($current_contract->service_detail()->get() as $item)
                        <tr>
                            <td>
                                <i class="btn-edit-service-detail fas fa-edit text-success" data-url="{{ route('chi-so-dich-vu.edit', $item->id) }}" onclick="editContractService(this)"></i>
                            </td>
                            <td>
                                {{ formatContractService($item->type) }}
                            </td>
                            <td>
                                {{ $item->start_number }}
                            </td>
                            <td>
                                {{ $item->end_number }}
                            </td>
                            <td>
                                {{ $item->end_number - $item->start_number }}
                            </td>
                            <td>
                                {{ $item->month }}
                            </td>
                            <td>
                                {{ $item->year }}
                            </td>
                            <td>
                                {{ date('d/m/Y', strtotime($item->created_at)) }}
                            </td>
                            <td>
                                {{ formatStatusContractService($item->status) }}
                            </td>
                            <td>
                                @if ($item->status == 1)
                                    {{ date('d/m/Y', strtotime($item->confirm_date)) }}
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
    <div class="tab-pane fade show" id="lich-su-cong-to">
    </div>
</div>
