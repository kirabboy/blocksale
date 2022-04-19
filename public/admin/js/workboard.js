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
});