$('#btn-create-account').click(function() {
    $.ajax({
            url: $(this).data('url'),
            type: 'GET',
            data: {},
        })
        .fail(function(data) {
            console.log(data);

        })
        .done(function(response) {
            console.log(response);
            $('.modal-area').append(response);
            $('#modal-form').modal('show');
        });
});

$(document).ready( function () {
    $('#table-account').DataTable();
} );

function closeModal() {
    $('#modal-form').modal('hide');

}