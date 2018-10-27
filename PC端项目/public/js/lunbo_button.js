/**
 * Created by web on 2018/9/6.
 */
$(function () {
    //$(".carousel_02").css("left","555px");
    $("#c-btn .pre-btn").click("on", function () {
        var $img1 = $("#carousel .carousel_01");
        var $img2 = $("#carousel .carousel_02");
        $img1.animate({"left":"-=555px"},500);
        $img2.animate({"left":"-=555px"},500);

    });
});
$(function () {
    //$(".carousel_02").css("left","555px");
    $("#c-btn .next-btn").click("on", function () {
        var $img1 = $("#carousel .carousel_01");
        var $img2 = $("#carousel .carousel_02");
        $img1.animate({"left":"+=555px"},500);
        $img2.animate({"left":"+=555px"},500);
    });
});


//»ÃµÆÆ¬
$(function () {
    $("#carousel > :gt(0)").hide();
    setInterval(function() {
        $('#carousel > div:first')
            .fadeOut(2000)
            .next()
            .fadeIn(2000)
            .end()
            .appendTo('#carousel');
    }, 4500);
})