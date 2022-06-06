<div class="modal fade model-render" id="modalFormEdit" tabindex="-1" role="dialog"
    aria-labelledby="modal-create-account" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Sửa tài khoản khách hàng</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="mainFormEdit" action="{{ route('admin.customer.update') }}" method="post">
                @csrf
                @method('PUT')
                <input type="hidden" name="id" value="{{ $customer->id }}">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6 form-group">
                            <label for="">Mã <sup class="text-danger">*</sup></label>
                            <input type="text" name="code" class="form-control" value="{{ $customer->code }}" placeholder="Mã khách hàng" required>
                        </div>
                        <div class="col-6 form-group">
                            <label for="">Họ và tên <sup class="text-danger">*</sup></label>
                            <input type="text" name="fullname" class="form-control" value="{{ $customer->fullname }}" placeholder="Họ và tên" required>
                        </div>
                        <div class="col-6 form-group">
                            <label for="">Email</label>
                            <input type="email" name="email" class="form-control" value="{{ $customer->email }}" placeholder="Email">
                        </div>
                        <div class="col-6 form-group">
                            <label for="">Số điện thoại <sup class="text-danger">*</sup></label>
                            <input type="number" name="phone" class="form-control" value="{{ $customer->phone }}" placeholder="Số điện thoại" required>
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Nghề nghiệp</label>
                            <input type="text" name="job" class="form-control" value="{{ $customer->job }}" placeholder="Nghề nghiệp">
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Giới tính</label>
                            <select name="gender" class="form-control" required>
                                @foreach($gender as $key => $value)
                                <option {{ checked( $key, $customer->gender )}} value="{{ $key }}">{{ $value }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Ngày sinh</label>
                            <input type="date" name="birthday" class="form-control" value="{{ $customer->birthday }}" pattern="(?:30))|(?:(?:0[13578]|1[02])-31))/(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])/(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4 form-group">
                            <label for="">CMND/CCCD <sup class="text-danger">*</sup></label>
                            <input type="text" name="identification_number" class="form-control" value="{{ $customer->identification_number }}" placeholder="CMND/Căn cước" required>
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Ngày cấp <sup class="text-danger">*</sup></label>
                            <input type="date" name="identification_time" class="form-control" value="{{ $customer->identification_time }}" required pattern="(?:30))|(?:(?:0[13578]|1[02])-31))/(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])/(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])">
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Nơi cấp <sup class="text-danger">*</sup></label>
                            <input type="text" name="identification_place" class="form-control" value="{{ $customer->identification_place }}" placeholder="Nơi cấp" required>
                        </div>
                        <div class="form-group col-12">
                            <label for="">Quê quán <sup class="text-danger">*</sup></label>
                            <input type="text" name="identification_address" class="form-control" value="{{ $customer->identification_address }}" placeholder="Địa chỉ thường trú" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4 form-group">
                            <label for="">Ngân hàng</label>
                            <input type="text" name="bank_name" class="form-control" value="{{ $customer->bank_name }}" placeholder="Tên ngân hàng">
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Số tài khoản</label>
                            <input type="text" name="bank_number" class="form-control" value="{{ $customer->bank_number }}" placeholder="Số tài khoản">
                        </div>
                        <div class="col-4 form-group">
                            <label for="">Tên tài khoản</label>
                            <input type="text" name="bank_account" class="form-control" value="{{ $customer->bank_account }}" placeholder="Tên tài khoản">
                        </div>
                        <div class="form-group col-12">
                            <label for="">Chi nhánh</label>
                            <input type="text" name="bank_branch" class="form-control" value="{{ $customer->bank_branch }}" placeholder="Địa chỉ chi nhánh">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 form-group">
                            <label for="">Ghi chú</label>
                            <textarea name="note" class="form-control" placeholder="Ghi chú">{{ $customer->note }}</textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-cyan bg-secondary" data-bs-dismiss="modal" type="button">Hủy</button>
                    <button type="submit" class="btn btn-cyan">Lưu lại</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        var myModalEl = document.getElementById('modalFormEdit');
        myModalEl.addEventListener('hidden.bs.modal', function (event) {
            $(this).remove();
        })
    </script>
</div>
