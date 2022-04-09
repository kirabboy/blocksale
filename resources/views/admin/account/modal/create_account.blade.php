<div class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="modal-create-account"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Tạo tài khoản Admin</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                    onclick="closeModal()">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="main-form" action="{{ route('quan-ly-admin.store') }}" method="post">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label for="">Tên tài khoản <sup class="text-danger">*</sup></label>
                                <input type="text" name="username" class="form-control" placeholder="Tên tài khoản">
                            </div>
                            <div class="form-group">
                                <label for="">Họ và tên</label>
                                <input type="text" name="fullname" class="form-control" placeholder="Họ và tên">
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label for="">Số điện thoại</label>
                                <input type="number" name="phone" class="form-control" placeholder="Số điện thoại">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="">Mật khẩu <sup class="text-danger">*</sup></label>
                                <input type="text" name="password" class="form-control" placeholder="Mật khẩu">
                            </div>
                            <div class="form-group">
                                <label for="">Giới tính</label>
                                <select name="gender" id="" class="form-control">
                                    <option value="1">Nam</option>
                                    <option value="2">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Ngày sinh</label>
                                <input type="date" name="birthday" class="form-control" placeholder="Ngày sinh">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="">Địa chỉ</label>
                                <input type="text" name="address" class="form-control" placeholder="Địa chỉ">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-cyan bg-secondary" data-dismiss="modal" type="button"
                        onclick="closeModal()">Hủy</button>
                    <button type="submit" class="btn btn-cyan">Lưu lại</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src={{ asset('/public/admin/js/submitform.js') }}></script>
