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
            console.log(response);
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

$('.btn-room').click(function() {
    $('.btn-room').removeClass('selected');
    $(this).addClass('selected');
    $.ajax({
            url: $(this).data('url'),
            data: {},
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            $('#nav_thong_tin_don_vi_thue').empty().append(response[0]);
            $('#nav_hop_dong_thue').empty().append(response[1]);

            console.log(response);
        });
});
$(".btn-room").first().trigger('click');