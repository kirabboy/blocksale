function dropdownBtn() {
    var menu = $(".dropdown-menu");
    if (!menu.hasClass("active")){
        menu.addClass("active");
    }
    else{
        menu.removeClass("active");
    }
}
$("[data-value='HN']").on("click", function(event){
    $(".dropdown-toggle").text("HN");
});
$("[data-value='HCM']").on("click", function(event){
    $(".dropdown-toggle").text("HCM");
});