$('#customer').change(function() {
    $.ajax({
            url: $(this).data('url'),
            data: {
                customer_id: $(this).val(),
            },
            type: 'GET'
        })
        .fail(function(data) {
            console.log(data);
        })
        .done(function(response) {
            console.log(response);
            $('#id_number').val(response['identification_number']);
            $('#id_date').val(yyyymmddToLocalDate(response['identification_date']));
            $('#id_place').val(response['identification_place']);
            $('#email').val(response['email']);
            $('#phone').val(response['phone']);
        });
});

function yyyymmddToLocalDate(isoString) {
    const [year, month, day] = isoString.split('/');
    return new Date(year, month - 1, day);
}
$('#customer').select2({
    dropdownParent: $("#result-select2"),
    width: '100%',
    multiple: false,
    // minimumInputLength: 3,
    // dataType: 'json',
    // ajax: {
    //     delay: 350,
    //     url: '{{ route("customer.selectAjax") }}',
    //     dataType: 'json',

    //     results: function(data) {
    //         console.log(data)

    //         return {
    //             results: $.map(data, function(item) {

    //                 return {
    //                     text: item.code,
    //                 }
    //             })
    //         };
    //     }
    // },
    placeholder: 'Chọn khách hàng...',

});