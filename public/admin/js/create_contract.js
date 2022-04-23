$('#form-create-contract').submit(function (e) {
    e.preventDefault();

    var form = $(this);
    var actionUrl = form.attr('action');
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url: actionUrl,
        type: 'POST',
        data: form.serialize(),
    })
        .fail(function (data) {
            console.log(data);

        })
        .done(function (response) {
            console.log(response);
            if (response['status']) {
                $('#modalFormCreate').modal('hide');
                toastr.success(response['message'], {
                    timeOut: 5000
                })
                $('#nav_thong_tin_don_vi_thue').empty().append(response['html_room']);
                $('#nav_hop_dong_thue').empty().append(response['html_contract']);
                $('#nav_lich_su_hop_dong').empty().append(response['htm_room_contract_history']);
            } else {
                toastr.error(response['message'], {
                    timeOut: 5000
                })
            }
            $('#building-detail button.selected').removeClass('border-danger').addClass('border-success');


        });
});