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

	
	/* 인풋박스 유효성 검사 (div) */
	$("#carNum").blur(function() {

		var chk = /([0-9].*[\uac00-\ud7a3])|([\uac00-\ud7a3].*[0-9])/;
		
		var carNum = $("#carNum").val();

		$("#carNummessage").html("<font color=red>올바른 차량번호 형식</font>으로 입력해주세요.");
		$("#carNummessage").show();
		
		if (carNum.match(chk) ) {
			$("#carNummessage").hide();
			
			$.ajax({
				url:"isDupCarnum.do",
				dataType:'json',
				method:'post',
				data:{
					"carNum":$("#carNum").val()
				},
				success:function(result){
					if (result.status == "no") {
						
					} else {
						$("#carNummessage").html("<font color=red>중복된 차량번호</font> 입니다.");
						$("#carNummessage").show();
					}
				}
			
			});
		}
	});

	$("#tempcc").blur(function() {
		var check = /^[\0-9\*]+$/;
		var cc = $("#cc").val();
		$("#CCmessage").html("<font color=red>숫자 형식</font>으로 입력해주세요.");
		$("#CCmessage").show();
		
		if ( cc.match(check) ) { 
			$("#CCmessage").hide();
		}
	});
	
	$("#tempmileage").blur(function() {

		var check = /^[\0-9\*]+$/;
		var mileage = $("#mileage").val();
		$("#Mileagemessage").html("<font color=red>숫자 형식</font>으로 입력해주세요.");
		$("#Mileagemessage").show();
		
		if ( mileage.match(check) ) {
			$("#Mileagemessage").hide();
		}
	});
	
});
$(function() {
	//제조국이 선택되었을때 -> 제조사리스트
	$("#list1").change(function() {
		init_all();
		var aaa = $("#list1 option:selected").val();
		$(".list" + aaa).show();
	});
});
	//제조사가 선택되었을때 -> 모델명리스트
$(function() {
	$("#list2").change(function() {
		init_list2();
		var aaa = $("#list2 option:selected").val();
		$(".list3-" + aaa).show();
	});
});
	//모델명이 선택되었을때 -> 컬러리스트
$(function() {
	$("#list3").change(function() {
		init_list3();
		var aaa = $("#list3 option:selected").val();
		$(".list4-" + aaa).show();
	});
	
	
});
/*./차량명, 색상 입력 셀렉박스 */

// 내용이 다 입력되어야 <다음>으로 넘어간다.
$("#submit2").click(function(event) {
	if ($("#carNum").val() == null){
		alert("carNum");
		return;
	} else if ($("#manuCountry option:selected").val() == null){
		alert("manuCountry");
		return;
	} else if ($("#manuCo option:selected").val() == null){
		alert("manuCo");
		return;
	} else if ($("#model option:selected").val() == null){
		alert("model");
		return;
	} else if ($("#color option:selected").val() == null){
		alert("color");
		return;
	} else if ($("#year option:selected").val() == null){
		alert("year");
		return;
	} else if ($("#carYear option:selected").val() == null){
		alert("carYear");
		return;
	} else if ($("#month option:selected").val() == null){
		alert("month");
		return;
	} else if ($("#transmission option:selected").val() == null){
		alert("transmission");
		return;
	} else if ($("#fuel option:selected").val() == null){
		alert("fuel");
		return;
	} else if ($("cc").val() == null){
		alert("cc");
		return;
	} else if ($("#mileage").val() == null){
		alert("mileage");
		return;
	} else if ($("#sell").val() == null){
		alert("sell");
		return;
	} else if ($("#accident").val() == null){
		alert("accident");
		return;
	} else {
	   alert("else!")
	}
	
	$("#form2").attr({action:"addCar.do", method:"post"}).submit();
			

});


/* CC, Km 인풋박스에 자동으로 화폐단위 변환 */

//콤마찍기
function comma(str) {
    str = String(str);

    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
   
}

//콤마풀기
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}


//input box에서 사용자 입력시 바로 콤마를 찍어주기 위한 함수도 추가 한다.
function inputNumberFormat(obj, id) {
    obj.value = comma(uncomma(obj.value));

	if(id=='cc') {
		$("#cc").val(uncomma(obj.value));
	} else if(id=='mileage') {
		$("#mileage").val(uncomma(obj.value));
	} else {
		
	}
    
}


/*./CC, Km 인풋박스에 자동으로 화폐단위 변환 */



	
