$(document).on('submit', '#mainFormCreate', function(e) {
    e.preventDefault();

    var form = $(this);
    var actionUrl = form.attr('action');
    $.ajax({
            url: actionUrl,
            type: 'POST',
            data: form.serialize(),
        })
        .fail(function(data) {
            console.log(data);
            $.each(data.responseJSON.message, function(key, value) {
                toastr.error(value, {
                    timeOut: 5000
                })
            });

        })
        .done(function(response) {
            toastr.success(response.message, {
                timeOut: 5000
            })
            closeModalRender();
        });
});