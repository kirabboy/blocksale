function createRoom(e) {
    $.ajax({
            url: $(e).data('url'),
            data: {
                'building_id': $(e).data('building_id'),
                'floor_id': $(e).data('floor_id'),
            },
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            $('.modal-area').append(response);
            $('#modal-form').modal('show');
        });
}

function createContract(e) {
    $.ajax({
            url: $(e).data('url'),
            data: {
                'room_id': $(e).data('room_id'),
            },
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            if (response) {
                console.log(response);
                $('.modal-area').append(response);
                $('#modalFormCreate').modal('show');
            } else {
                toastr.error('Hợp đồng đã tồn tại', {
                    timeOut: 5000
                })
            }

        });
}

function createContractEarnest(e) {
    $.ajax({
            url: $(e).data('url'),
            data: {
                'room_id': $(e).data('room_id'),
            },
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            if (response) {
                console.log(response);
                $('.modal-area').append(response);
                $('#modalFormCreate').modal('show');
            } else {
                toastr.error('Hợp đồng đã tồn tại', {
                    timeOut: 5000
                })
            }

        });
}

function createContractService(e) {
    $.ajax({
            url: $(e).data('url'),
            data: {
                'id_contract': $(e).data('id_contract'),
            },
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            console.log(response);
            $('.modal-area').append(response);
            $('#modalFormCreate').modal('show');
        });
}

function editContractService(e) {
    $.ajax({
            url: $(e).data('url'),
            data: {},
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            console.log(response);
            $('.modal-area').append(response);
            $('#modalFormCreate').modal('show');
        });
}

$('#tool-filter-status-room button').click(function() {
    $.ajax({
            url: $('#tool-filter-status-room').data('url'),
            data: {
                'status': $(this).data('status'),
            },
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            $('#building-detail').empty().append(response);
            console.log(response);
        });
});

function closeModal() {
    $('#modal-form').modal('hide');
}

function getRoomInfo(e) {
    $('.btn-room').removeClass('selected');
    $(e).addClass('selected');
    $.ajax({
            url: $(e).data('url'),
            data: {},
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            $('#nav_thong_tin_don_vi_thue').empty().append(response['html_room']);
            $('#nav_hop_dong_thue').empty().append(response['html_contract']);
            $('#nav_lich_su_hop_dong').empty().append(response['html_room_contract_history']);
            $('#nav_dat_coc_giu_cho').empty().append(response['html_contract_earnest']);
            $('#service-detail-area').empty().append(response['html_service_detail']);
            console.log(response);
        });
}
$(".btn-room").first().trigger('click');