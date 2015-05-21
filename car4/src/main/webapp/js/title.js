$(document).ready(function() {
	
	 init_all();
	 
    $(".dropdown").hover(function() {
        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
        $(this).toggleClass('open');
    }, function() {
        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
        $(this).toggleClass('open');
    });

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

    
  //주행거리 구간 슬라이드 바
    if (top.location != location) {
    top.location.href = document.location.href ;
    }
    	$(function(){
    		window.prettyPrint && prettyPrint();

        $('#sl1').slider({
          formater: function(value) {
            return 'Current value: '+value;
          }
        });
        $('#sl2').slider();

        var RGBChange = function() {
          $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
        };

        var r = $('#R').slider()
                .on('slide', RGBChange)
                .data('slider');
        var g = $('#G').slider()
                .on('slide', RGBChange)
                .data('slider');
        var b = $('#B').slider()
                .on('slide', RGBChange)
                .data('slider');

        $('#eg input').slider();
    });

    
});


//////// 연식 입력받기 
//연식 checked/ unchecked
$("#modelyear").click(function(event){
	
	if (  $("#modelyear").is(":checked")   ) {
		
		$("#inputmodelyear").css("color", "black");
		$("#to").css("color", "black");
		$("#up").attr("disabled", false);
		$("#down").attr("disabled", false);
		
	
	}else  {
		
		$("#inputmodelyear").css("color", "gray");
		$("#to").css("color", "gray");
		$("#up").attr("disabled", true);
		$("#up").val("");
		$("#down").attr("disabled", true);
		$("#down").val("");
	
	}
});

////////주행거리 입력받기 
//주행거리 checked/ unchecked
$("#modelyear").click(function(event){
	
	if (  $("#modelyear").is(":checked")   ) {
		
		$("#inputmodelyear").css("color", "black");
		$("#to").css("color", "black");
		$("#up").attr("disabled", false);
		$("#down").attr("disabled", false);
		
	
	}else  {
		
		$("#inputmodelyear").css("color", "gray");
		$("#to").css("color", "gray");
		$("#up").attr("disabled", true);
		$("#up").val("");
		$("#down").attr("disabled", true);
		$("#down").val("");
	
	}
});


////////text input 자동으로 다음칸 넘어가기
$("#up").keyup(function () {

	var inputLength = $(this).val().length;
	var remain = 4 - inputLength;

	if ( remain <=  0) {
		var up = $("#up").val();
		
		$("#down").focus();
		
	}
});

//list2, list3 모두 초기화 함수.
function init_all() {
	// make-list(list2, list3 포함 클래스) 초기화
	$(".make-list > a").hide();
	$(".make-list > p,br").show();
}

$(".group1 > a").click(function(event){
	// 리스트1이 선택될 경우 리스트2와 리스트3을 먼저 초기화.
	
	$("#table2").hide();
	init_all();
	// 해당 target의 id를 리스트이름으로 받아와서 리스트 2를 보여줌.
	$("#list" + event.target.id + " > a").show();
	// list2의 문구는 숨김.
	$(".group2 > p,br").hide();
});

$(".group2 > a").click(function(event){
	$("#table3").hide();
	$(".group3 > a").hide();
	$(".group3 > p,br").show(); 
	
	// list1 선택될때와 동일.
	$("#list3-" + event.target.id + " > a").show();
	$(".group3 > p,br").hide(); 
});

