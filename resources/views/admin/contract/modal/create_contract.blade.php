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
            <form id="mainFormCreate" action="{{ route('hop-dong.store') }}" method="post">
                @csrf
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label for="">Tên phòng thuê <sup class="text-danger">*</sup></label>
                                <input type="text" name="" class="form-control" placeholder="Tên phòng thuê" readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Loại hợp đồng<sup class="text-danger">*</sup></label>
                                <select class="form-control" name="type" readonly>
                                    <option value="1" selected>Hợp đồng thuê</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="">Mã hợp đồng<sup class="text-danger">*</sup></label>
                                <input type="text" name="" class="form-control" placeholder="Mã hợp đồng" readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Tên hợp đồng<sup class="text-danger">*</sup></label>
                                <input type="text" name="" class="form-control" placeholder="Tên hợp đồng" readonly>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-cyan bg-secondary" type="button"
                    data-bs-dismiss="modal" onclick="closeModalRender()" >Hủy</button>
                    <button class="btn btn-cyan" type="submit">Lưu lại</button>
                </div>
            </form>
        </div>
    </div>
</div>
