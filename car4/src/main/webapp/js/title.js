$(document).ready(function() {
    $(".dropdown").hover(function() {
        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
        $(this).toggleClass('open');
    }, function() {
        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
        $(this).toggleClass('open');
    });
});

/*
 *  /* right up start
 */
$(document).ready(function() {
    $("#mytable #checkall").click(function() {
        if ($("#mytable #checkall").is(':checked')) {
            $("#mytable input[type=checkbox]").each(function() {
                $(this).prop("checked", true);
            });

        } else {
            $("#mytable input[type=checkbox]").each(function() {
                $(this).prop("checked", false);
            });
        }
    });

    $("[data-toggle=tooltip]").tooltip();
});
/* right up start */

/*$(document).ready(function() {
    var count = 0;
    if (count == 0) {
        $(".list-group-item").on({
            click : function() {
            $(this).css();
            }

        });
        count = 1;
    }
});*/







    
    

$(document).ready(function() {

	$(".make-list > a").hide();
/*  
   $("#list2-1 > a").hide();
   $("#list2-2 > a").hide();
   $("#list2-3 > a").hide();
   $("#list3-1 > a").hide();
   $("#list3-2 > a").hide();
   */

});


$(document).ready(function() {
    /* 첫번째 클릭 시작 */
    $("#list1 > a").click(function(event){
        if((event.target.id)=="a1"){
           $("#list2-1 > a").show();
           $("#list2-1 > p,br").hide();
           
           $("#list3-1 > a").hide();
           $("#list3-1 > br").show();
           $("#list3-2").hide();
           
           $("#list2-1 > a").click(function(event){// a1->list2-1
        	   if( (event.target.id)=="hd" ) {// list2-1:hd -> list3-1
        		   $("#list3-1 > a").show();
                   $("#list3-1 > p,br").hide();
                   
                
        	   }else if( (event.target.id)=="kia" ) {
        		   $("#list3-2").show();
        		   var cnt =0;
        		   alert(cnt);
        		   cnt ++;
        		 

                
        	   }else {
        		   
        	   }
           })//end of a1->list2-1
           
    /* 첫번째 클릭 끝 */
        /* ==== 첫번째 클릭 후 다른 카테고리 클릭 시 ====*/    
            $("#list1 > a").click(function(event){
            if((event.target.id)=="a2"){
                $("#list2-1").hide();
                $("#list2-2").show();
                $("#list2-2 > p,br").hide();
               }
           });
        /* ==== 첫번째 클릭 후 다른 카테고리 클릭 끝 ====*/
        }else if((event.target.id)=="a2"){
           $("#list2-2 > a").show();
           $("#list2-2 > p,br").hide();
    /* 두번째 클릭 끝 */     
        /* ==== 두번째 클릭 후 다른 카테고리 클릭 시 ====*/      
           $("#list1 > a").click(function(event){
            if((event.target.id)=="a1"){
                $("#list2-2").hide();
                $("#list2-1").show();
                $("#list2-1 > p,br").hide();
               }
           });
        /* ==== 두번째 클릭 후 다른 카테고리 클릭 끝 ====*/       
           
           
        }else{
           $("#list2-3 > a").show();
           $("#list2-3 > p,br").hide();
        }
    });
});








