$(function () {

    /*根据屏幕宽度的变化决定轮播图片应该展示什么*/
    // function resize() {
    //     // 获取屏幕宽度
    //     var windowWidth = $(window).width();
    //     // 判断屏幕属于大还是小
    //     var isSmallScreen = windowWidth < 768;
    //     // 根据大小为界面上的每一张轮播图设置背景
    //     $('#slider> .carousel-inner > .item').each(function(i, item) {
    //         // 因为拿到是DOM对象 需要转换
    //         var $item = $(item);
    //         var imgSrc = $item.data(isSmallScreen ? 'image-xs' : 'image-lg');

    //         // 设置背景图片
    //         $item.css('backgroundImage', 'url("' + imgSrc + '")');

    //         if (isSmallScreen) {
    //             $item.html('<img src="' + imgSrc + '" alt="" />');
    //         } else {
    //             $item.empty();
    //         }
    //     });
    // }


    $('.carousel').carousel();

    var $carousels = $('.carousel');
    var startX, endX;
    var offset = 50;
    // 注册滑动事件
    $carousels.on('touchstart', function(e) {
        startX = e.originalEvent.touches[0].clientX;
    });

    $carousels.on('touchmove', function(e) {
        endX = e.originalEvent.touches[0].clientX;
    });
    $carousels.on('touchend', function(e) {
        var distance = Math.abs(startX - endX);
        if (distance > offset) {
            $(this).carousel(startX > endX ? 'next' : 'prev');
        }
    });
});


