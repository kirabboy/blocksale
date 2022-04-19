var elm = $("ul.nav-check-current>li.nav-item>a");
var url_current = window.location.href;
var url_origin   = $("meta[name='url-home']").attr("content");

url_current = url_current.replace(url_origin, '');
// console.log('host:' + url_current);
elm.map(function(index, item) {

    if(url_current.indexOf(item.href.replace(url_origin, '')) > -1) {
        $(item).addClass("active");

    }
    // console.log(item.href.replace(url_origin, ''));
});

function closeModalRender() {
    // $('#modalFormedit').modal('hide');
    $('.model-render').remove();

}

