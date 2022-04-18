$('#btn-create-building').click(function() {
    $.ajax({
            url: $(this).data('url'),
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
});



function closeModal() {
    $('#modal-form').modal('hide');

}