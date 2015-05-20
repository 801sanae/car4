/*
 * 두번째 동그라미에 대한 자바스크립트 파일 
 */

/* 차량명, 색상 입력 셀렉박스 */

//전체 셀렉박스 초기화함수.
function init_all() {
	
	$(".list2-1").hide();
	$(".list2-2").hide();
	$(".list3-hyundai").hide();
	$(".list3-kia").hide();
	$(".list3-bmw").hide();
	$(".list4-sonata").hide();
	$(".list4-carnival").hide();
	$(".list4-320d").hide();
	
}

//list2 셀렉박스 초기화함수.
function init_list2() {

	$(".list3-hyundai").hide();
	$(".list3-kia").hide();
	$(".list3-bmw").hide(); 
	$(".list4-sonata").hide();
	$(".list4-carnival").hide();
	$(".list4-320d").hide();

}

//list3 셀렉박스 초기화함수. 
function init_list3() {

	$(".list4-sonata").hide();
	$(".list4-carnival").hide();
	$(".list4-320d").hide();

}


// ready함수.
$(document).ready(function() {
	 init_all();
});


$(function() {
	$("#list1").change(function() {
		init_all();
		var aaa = $("select#list1 option:selected").attr("id");
		$(".list" + aaa).show();
	});
});

$(function() {
	$("#list2").change(function() {
		init_list2();
		var aaa = $("select#list2 option:selected").attr("id");
		$(".list3-" + aaa).show();
	});
});
	
$(function() {
	$("#list3").change(function() {
		init_list3();
		var aaa = $("select#list3 option:selected").attr("id");
		$(".list4-" + aaa).show();
	});
});
	
