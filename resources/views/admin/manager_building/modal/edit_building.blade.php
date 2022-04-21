<div class="modal model-render fade modal-primary" id="modalFormedit" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="form-title">Sửa tòa nhà</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"
                    onclick="closeModalRender()">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @if(isset($building))
            <form id="mainFormEdit" action="{{ route('admin.building.update') }}" method="post">
                @csrf
                @method('PUT')
                <input type="hidden" name="id" value="{{ $building->id }}">
                <div class="modal-body">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="main-tab" data-toggle="tab" href="#main" role="tab"
                                aria-selected="true">Tòa nhà</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="extend-tab" data-toggle="tab" href="#extend" role="tab"
                                aria-selected="false">Mở rộng</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="main" role="tabpanel">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Mã <sup class="text-danger">*</sup></label>
                                        <input type="text" class="form-control" name="code" placeholder="Mã tòa nhà"
                                            value="{{ $building->code }}" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Tên tòa nhà <sup class="text-danger">*</sup></label>
                                        <input type="text" class="form-control" name="name" placeholder="Tên tòa nhà"
                                            value="{{ $building->name }}" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Chủ sở hữu <sup class="text-danger">*</sup></label>
                                        <input type="text" class="form-control" name="owner" placeholder="Chủ sở hữu"
                                            value="{{ $building->owner }}" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Số tầng <sup class="text-danger">*</sup></label>
                                        <input type="number" class="form-control" name="number_floor"
                                            min="{{ $building->number_floor }}" placeholder="Số tầng"
                                            value="{{ $building->number_floor }}" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="">Địa chỉ <sup class="text-danger">*</sup></label>
                                        <input type="text" class="form-control" name="address" placeholder="Địa chỉ"
                                            value="{{ $building->address }}" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Điện thoại <sup class="text-danger">*</sup></label>
                                        <input type="number" class="form-control" name="owner_phone"
                                            placeholder="Số điện thoại" value="{{ $building->owner_phone }}" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Email <sup class="text-danger">*</sup></label>
                                        <input type="email" class="form-control" name="owner_email"
                                            placeholder="Địa chỉ Email" value="{{ $building->owner_email }}" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="">Ghi chú</label>
                                        <textarea class="form-control" name="note">{{ $building->note }}</textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="extend" role="tabpanel">
                            <div class="form-group">
                                <label for="">Giới thiệu</label>
                                <textarea name="introduce">{{ $building->introduce }}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-cyan bg-secondary" data-bs-dismiss="modal" type="button"
                        onclick="closeModalRender()">Hủy</button>
                    <button class="btn btn-cyan" type="submit">Lưu lại</button>
                </div>
            </form>
            @endif
        </div>
    </div>
    <script src="{{ asset('/public/packages/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ asset('/public/packages/ckfinder/ckfinder.js') }}"></script>

    <script>
        CKEDITOR.replace('introduce', {
            toolbar: [{
                    name: 'clipboard',
                    items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']
                },
                {
                    name: 'editing',
                    items: ['Find', 'Replace', '-', 'SelectAll', '-', 'SpellChecker', 'Scayt']
                },
                {
                    name: 'basicstyles',
                    items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-',
                        'RemoveFormat'
                    ]
                },
                {
                    name: 'paragraph',
                    items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote',
                        'CreateDiv',
                        '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-',
                        'BidiLtr',
                        'BidiRtl'
                    ]
                },
                {
                    name: 'links',
                    items: ['Link', 'Unlink', 'Anchor']
                },
                {
                    name: 'insert',
                    items: ['Image', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak',
                        'Iframe'
                    ]
                },
                '/',
                {
                    name: 'styles',
                    items: ['Styles', 'Format', 'Font', 'FontSize']
                },
                {
                    name: 'colors',
                    items: ['TextColor', 'BGColor']
                },
                {
                    name: 'tools',
                    items: ['Maximize', 'ShowBlocks', '-', 'About']
                }
            ]
        });
        var myModalEl = document.getElementById('modalFormEdit');
        myModalEl.addEventListener('hidden.bs.modal', function (event) {
            $(this).remove();
        })
    </script>
</div>
