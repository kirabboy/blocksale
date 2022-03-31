$(function() {
    var header = $(".header-main");
    $(window).scroll(function() {
        var scroll = $(window).scrollTop();
        if (scroll >= 500) {
            header.addClass("stuck");
        } else {
            header.removeClass("stuck");
        }
    });
});