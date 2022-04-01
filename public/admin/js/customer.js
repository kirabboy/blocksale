$(document).ready(function() {
    $('#table_khach_hang tfoot th.yes').each(function() {
        var title = $(this).text();
        $(this).html('<input class="form-control form-control-sm form_special" type="text" style="width: 100%" placeholder="' + title + '" />');
    });

    // DataTable
    var table = $('#table_khach_hang').DataTable({
        initComplete: function() {
            // Apply the search
            this.api().columns().every(function() {
                var that = this;

                $('input', this.footer()).on('keyup change clear', function() {
                    if (that.search() !== this.value) {
                        that
                            .search(this.value)
                            .draw();
                    }
                });
            });

            this.api().columns([4, 5, 6]).every(function() {
                var column = this;
                var info_1 = $('<select class="form-control form-control-sm form_special" type="text" style="width: 100%" ><option value="">--Tất cả--</option></select>');
                var select = info_1
                    .appendTo($(column.footer()).empty())
                    .on('change', function() {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search(val ? '^' + val + '$' : '', true, false)
                            .draw();
                    });

                column.data().unique().sort().each(function(d, j) {
                    select.append('<option value="' + d + '">' + d + '</option>')
                });
            });
        },
        columnDefs: [
            { targets: 'no-sort', orderable: false }
        ],
        columnDefs: [{
            orderable: false,
            className: 'select-checkbox',
            targets: 0
        }],
        select: {
            selector: 'td:first-child',
            style: 'multi'
        },
        language: {
            "search": "",
            "lengthMenu": "",
            "info": "Hiển thị từ _START_ đến _END_ của _TOTAL_ ",
            "zeroRecords": "Không kiếm ra được kết quả nào :((",
            "infoFiltered": "",
            "infoEmpty": "Không có gì để hiển thị",
            "paginate": {
                "first": "Đầu trang",
                "last": "Cuối trang",
                "next": "Trang tiếp theo",
                "previous": "Trang trước"
            },
        },
    });

});

$(document).ready(function() {
    var DT1 = $('#table_khach_hang').DataTable();
    $("#select-all").on("click", function(e) {
        if ($(this).is(":checked")) {
            DT1.rows().select();
        } else {
            DT1.rows().deselect();
        }
    });
});