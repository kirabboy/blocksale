$('#main-form').submit(function(e) {
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
        .fail(function(data) {
            console.log(data);

        })
        .done(function(response) {
            console.log(response);
            $('#modal-form').modal('hide');
            $('#after-submit').prepend(response);
        });
});