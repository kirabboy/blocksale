$(document).ready(function() {
    $(".next").click(function() {
        $(".pagination")
            .find(".pageNumber.active")
            .next()
            .addClass("active");
        $(".pagination")
            .find(".pageNumber.active")
            .prev()
            .removeClass("active");
    });
    $(".prev").click(function() {
        $(".pagination")
            .find(".pageNumber.active")
            .prev()
            .addClass("active");
        $(".pagination")
            .find(".pageNumber.active")
            .next()
            .removeClass("active");
    });
});
$("#slider-range").slider({
    range: true,
    min: 0,
    max: 15,
    step: 0.1,
    values: [0, 15],
    slide: function(e, ui) {
        var min = Math.floor(ui.values[0]);
        $('.slider-time').html(min + ' tr');

        var max = Math.floor(ui.values[1]);

        $('.slider-time2').html(max + ' tr');

        $('.box').each(function() {
            var startTime = (min);
            var endTime = (max);
            //console.log('.box[data-start-time="' + startTime + '"]');

            var value = $(this).data('start-time');
            //console.log('Selecting all events between ' + startTime + ' and ' + endTime);
            // skeleton key
            //console.log(value + '<=' + endTime);
            if ((parseInt(endTime) >= parseInt(value) && (parseInt(startTime) <= parseInt(value)))) {
                $(this).show();
            } else {
                $(this).hide();
            }
            //
        });

    }
});
$('.sub-menu ul').hide();
$(".sub-menu a").click(function() {
    $(this).parent(".sub-menu").children("ul").slideToggle("100");
    $(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
});