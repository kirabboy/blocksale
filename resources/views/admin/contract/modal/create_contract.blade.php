<div class="modal model-render fade modal-primary" id="modalFormCreate" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="form-title">Thêm hợp đồng</h5>
                <button type="button" class="close" data-bs-dismiss="modal" onclick="closeModalRender()">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-create-contract" action="{{ route('hop-dong.store') }}" method="post">
                @csrf
                <div class="modal-body">
                    <div class="border border-1 p-2">
                        <label class="font-weight-bold text-danger">1. Thông tin hợp đồng</label>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="">Tên phòng thuê <sup class="text-danger">*</sup></label>
                                    <input type="text" name="" class="form-control" value="{{ $room->name }}"
                                        placeholder="Tên phòng thuê" readonly>
                                    <input type="hidden" name="id_room" value="{{ $room->id }}" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Loại hợp đồng<sup class="text-danger">*</sup></label>
                                    <select class="form-control" name="type" readonly>
                                        <option value="1" selected>Hợp đồng thuê</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Ngày bắt đầu<sup class="text-danger">*</sup></label>
                                    <input type="date" name="time_start" class="form-control"
                                        placeholder="Ngày bắt đầu" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Ngày tính phí<sup class="text-danger">*</sup></label>
                                    <input type="date" name="time_charge" class="form-control"
                                        placeholder="Ngày tính phí" required>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="">Mã hợp đồng<sup class="text-danger">*</sup></label>
                                    <input type="text" name="code" class="form-control" placeholder="Mã hợp đồng"
                                        required>
                                </div>
                                <div class="form-group">
                                    <label for="">Tên hợp đồng<sup class="text-danger">*</sup></label>
                                    <input type="text" name="name" class="form-control" placeholder="Tên hợp đồng"
                                        required>
                                </div>
                                <div class="form-group">
                                    <label for="">Ngày kết thúc<sup class="text-danger">*</sup></label>
                                    <input type="date" name="time_end" class="form-control"
                                        placeholder="Ngày kết thúc" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Đặt cọc</label>
                                    <div class="row d-flex align-items-center">
                                        <div class="col-2 justify-content-center d-flex">
                                            <input type="checkbox" class="input-group-text" name="is_earnest" value="1">
                                        </div>
                                        <div class="col-10">
                                            <input type="number" class="form-control" name="amount_earnest"
                                                placeholder="Tiền đặt cọc" value="0">
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-12">
                                <label for="">Mô tả hợp đồng</label>
                                <textarea name="note" class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="border border-1 p-2 mt-3">
                        <label class="font-weight-bold text-danger">2. Thông tin khách hàng</label>
                        <div class="row">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <table id="table-customer" class="table table-sm table-create-contract">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Khách hàng</th>
                                                <th scope="col">CCCD/CMND</th>
                                                <th scope="col">Số điện thoại</th>
                                                <th scope="col">Đại diện</th>
                                                <th scope="col">Ghi chú</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="border border-1 p-2 mt-3">
                        <label class="font-weight-bold text-danger">3. Thông tin dịch vụ</label>
                        <div class="row">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <table class="table table-sm table-create-contract">
                                        <thead>
                                            <tr>
                                                <th scope="col">Dịch vụ</th>
                                                <th scope="col">Số lượng</th>
                                                <th scope="col">Đơn giá</th>
                                                <th scope="col">Đơn vị</th>
                                                <th scope="col">Ghi chú</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Phí thuê nhà</td>
                                                <td><input type="number" class="form-control" name="number_room"
                                                        value="1"></td>
                                                <td><input type="number" class="form-control" name="price_room"
                                                        value="{{$room->price}}" placeholder="Đơn giá"></td>
                                                <td>tháng</td>
                                                <td><input type="text" class="form-control" name="note_room" placeholder="Ghi chú">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Phí điện</td>
                                                <td><input type="number" class="form-control" name="number_electric"
                                                        value="1"></td>
                                                <td><input type="number" class="form-control" name="price_electric"
                                                        value="3500" placeholder="Đơn giá"></td>
                                                <td>kWh</td>
                                                <td><input type="text" class="form-control" name="note_electric"
                                                        value="" placeholder="Ghi chú">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Phí nước</td>
                                                <td><input type="number" class="form-control" name="number_water" value="1"></td>
                                                <td><input type="number" class="form-control" name="price_water" value="25000"
                                                        placeholder="Đơn giá"></td>
                                                <td><select name="type_water" class="form-control" id="">
                                                        <option value="1">tháng</option>
                                                        <option value="2">m3</option>
                                                    </select></td>
                                                <td><input type="text" class="form-control" name="note_water" placeholder="Ghi chú">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Phí dịch vụ</td>
                                                <td><input type="number" class="form-control" name="number_service" value="1"></td>
                                                <td><input type="number" class="form-control" name="price_service" value="100000"
                                                        placeholder="Đơn giá"></td>
                                                <td>tháng</td>
                                                <td><input type="text" class="form-control" name="note_service" placeholder="Ghi chú">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-cyan bg-secondary" type="button" data-bs-dismiss="modal"
                        onclick="closeModalRender()">Hủy</button>
                    <button class="btn btn-cyan" type="submit">Lưu lại</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $('#table-customer').DataTable({

        // order: [
        //     [1, 'asc']
        // ],
        responsive: true,
        lengthMenu: [
            [25, 50, -1],
            [25, 50, "All"]
        ],
        ajax: "{{ route('customer.indexDatatable') }}",
        columnDefs: [{
                targets: 0,
                type: "html",
                render: function(data, id, row) {
                    return `<input type="checkbox" onclick="selectCustomer(this)" name="customer_ids[]" value="${row.id}" />`
                }

            },
            {
                targets: 1,
                type: "html",
                render: function(data, fullname, row) {
                    return `${row.fullname}`
                }

            },
            {
                targets: 2,
                type: "html",
                render: function(data, identification_number, row) {
                    return `${row.identification_number}`
                }

            },
            {
                targets: 3,
                type: "html",
                render: function(data, id, row) {
                    return `${row.phone}`
                }

            },
            {
                targets: 4,
                type: "html",
                render: function(data, id, row) {
                    return `<input type="radio" id="representative${row.id}" name="is_representative" disabled value="${row.id}">`
                }

            },
            {
                targets: 5,
                type: "html",
                render: function(data, id, row) {
                    return `<input type="text" class="form-control" name="note${row.id}" value="">`
                }

            },

        ],
    });

    function selectCustomer(e) {
        if ($(e).is(":checked")) {
            $('#representative' + $(e).val()).removeAttr('disabled');
        } else {
            $('#representative' + $(e).val()).attr('disabled', true);
        }
        $('#representative' + $('#table-customer input[type="checkbox"]:checked').val()).trigger('click');


    }
</script>
