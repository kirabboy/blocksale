<div class="modal fade modal-primary" id="modal-form" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="form-title">Thêm phòng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                    onclick="closeModal()">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="create-room-form" action="{{ route('phong.store') }}" method="post">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <input type="hidden" name="building_id" value="{{$building->id}}">
                            <div class="form-group">
                                <label for="">Mã <sup class="text-danger">*</sup></label>
                                <input type="text" name="code" class="form-control" placeholder="Mã phòng" required>
                            </div>
                            <div class="form-group">
                                <label for="">Loại <sup class="text-danger">*</sup></label>
                                <select name="type" class="form-control"  required>
                                    <option value="1">Phòng trọ</option>
                                    <option value="2">Căn hộ</option>
                                    <option value="3">Chung cư mini</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Giá/tháng <sup class="text-danger">*</sup></label>
                                <input type="number" class="form-control" name="price" placeholder="Giá phòng" >
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label for="">Tên phòng <sup class="text-danger">*</sup></label>
                                <input type="text" class="form-control" name="name" placeholder="Tên phòng" required>
                            </div>
                            <div class="form-group">
                                <label for="">Tầng <sup class="text-danger">*</sup></label>
                                <select name="floor_id" class="form-control" required>
                                    @foreach($floors as $floor)
                                        <option value="{{ $floor->id }}" {{$floor_id == $floor->id ? ' selected' : '' }}>{{ $floor->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Diện tích(m2) <sup class="text-danger">*</sup></label>
                                <input type="number" class="form-control" name="acreage" placeholder="Diện tích">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label for="">Ghi chú</label>
                                <textarea name="note" id=""  rows="10" class="w-100"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-cyan bg-secondary" data-dismiss="modal" type="button"
                        onclick="closeModal()">Hủy</button>
                    <button class="btn btn-cyan" type="submit">Lưu lại</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src={{ asset('/public/admin/js/create_room.js') }}></script>

