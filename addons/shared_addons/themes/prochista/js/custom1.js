$(document).ready(function(){	

        //Navigation-----------------------------//
        function piMainmenu()
        {
            $(" #nav ul ").css({
                display: "none"
            }); // Opera Fix
            $(" #nav").children('li').hover(function(){
                var ulFirst=$(this).find('ul:first');
                ulFirst.css({
                    visibility: "visible",
                    opacity: 0,
                    display: "block"
                }).animate({
                    opacity:1,
                    left:'0px'
                },400,'linear');
            },function(){
                $(this).find('ul:first').css({
                    display: "none"
                }).animate({
                    left:'-100px'
                },100);

            });
        }

        function triggerUserMenu()
        {
           $('a#login-register').on('click',function(e){
                e.preventDefault;
                $('div#login-modal').animate({'height':'400px'},500,'linear',function(){
                   $('div#login-inside').fadeIn('slow'); 
                });
                
                return false;
           });
        }

        /mobile/i.test(navigator.userAgent) && !location.hash && setTimeout(function () {
            if (!pageYOffset) window.scrollTo(0, 1);
        }, 1000);

        //Accordion ------------------------------//

        (function() {
                var $container = $('.accordion-body'),
                        $acc_head   = $('.accordion-head');

                $container.hide();
                $acc_head.first().addClass('active').next().show();
                $acc_head.last().addClass('last');

                $acc_head.on('click', function(e) {
                        if( $(this).next().is(':hidden') ) {
                                $acc_head.removeClass('active').next().slideUp(300);
                                $(this).toggleClass('active').next().slideDown(300);
                        }
                        e.preventDefault();
                });

        })();

    
        piMainmenu(); //menu ---------------//
    
        triggerUserMenu();//User menu//
    
        selectnav('nav');//menu switch-------------//
    
        //Tooltips------------------//
        $('*[rel=tooltip]').tooltip();

        
        $('.close-login').on('click',function(e){
            e.preventDefault;
            
            $('div#login-inside').fadeOut('fast',function(){
                $('div#login-modal').animate({'height':'0px'},200,'linear');
            });
        });

        
        //masonry ---------------//
        var $container = $('#masonry-categories');

        $container.imagesLoaded( function(){
          $container.masonry({
            itemSelector: '.masonry-item',
            isAnimated: true,
            columnWidth: function( containerWidth ) {
                return containerWidth / 6;
            }
          });
        });
        
});