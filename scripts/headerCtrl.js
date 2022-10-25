app.controller('headerCtrl', ['$scope', '$http', '$location', 'authService', function ($scope, $http, $location, authservice) {
  
    //$(document).ready(function () {
    $(".dropdown").hover(
        function () {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, true).slideDown("400");
            $(this).toggleClass('open');
        },
        function () {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, true).slideUp("400");
            $(this).toggleClass('open');
        }
    );
    //});
    //-----------------------------------------------
    $(function () {
        // เงื่อนไข event เมื่อมีการเลื่อน scrollbar ในหน้าเพจ    
        $(window).scroll(function () {
            // เมื่อเลื่อน scroll bar หน้าเพจ ถึงตำแหน่งที่มากกว่าหรือเท่ากับตำแหน่งที่ต้องการ  
            // เมื่อเลื่อน scroll bar หน้าเพจ ถึงตำแหน่ง ที่ทำให้ div  
            // class ชื่อ my_float_div ชิดขอบบนพอดี หาจากคำสั่ง  
            // console.log($(document).scrollTop());  
            if ($(document).scrollTop() > 400) {
                $(".my_float_div").css({
                    'position': 'fixed',
                    'top': '0px'
                });
            } else { // เลื่อนกลับมาอยู่ตำแหน่งเดิม ถ้าไม่อยู่ในเงื่อนไข  
                $(".my_float_div").css({
                    'position': 'relative',
                    'top': '155px'
                })
            }
        });
    });


}]);