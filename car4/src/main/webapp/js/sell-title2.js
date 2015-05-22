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

	
	/* popover를 이용한 인풋박스 유효성 검사 */
	$("#carNum").blur(function() {
		var check = /^[\uac00-\ud7a3|0-9|\*]+$/;
		var p_carNo = $("#carNum").val();

		$("#carNum").popover('show');

		if (carNum.match(check)) {
			$("#carNum").popover('hide');
		}
	});

	$("#cc").blur(function() {
		var check = /^[\0-9\*]+$/;
		var p_cc = $("#cc").val();

		$("#cc").popover('show');

		if (cc.match(check)) {
			$("#cc").popover('hide');
		}
	});
	
	$("#km").blur(function() {
		var check = /^[\0-9\*]+$/;
		var p_km = $("#km").val();

		$("#km").popover('show');

		if (km.match(check)) {
			$("#km").popover('hide');
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
	/* ./popover를 이용한 인풋박스 유효성 검사 */	
	
	
});

/*./차량명, 색상 입력 셀렉박스 */

/* CC, Km 인풋박스에 자동으로 화폐단위 변환 */
function strip_comma(data)
{
    var flag = 1;
    var valid = "1234567890";
    var output = '';
    if (data.charAt(0) == '-')
    {
        flag = 0;
        data = data.substring(1);
    }
    
    for (var i=0; i<data.length; i++)
    {
        if (valid.indexOf(data.charAt(i)) != -1)
            output += data.charAt(i)
    }
    
    if (flag == 1)
        return output;
    else if (flag == 0)
        return ('-' + output);
}
  
function add_comma(what)
{
    var flag = 1;
    var data = what;
    var len = data.length;
    
    if (data.charAt(0) == '-')
    {
        flag = 0;
        data = data.substring(1);
    }
    if (data.charAt(0) == '0' && data.charAt(1) == '-')
    {
        flag = 0;
        data = data.substring(2);
    }
    
    var number = strip_comma(data);
    number = '' + number;
    if (number.length > 3)
    {
        var mod = number.length % 3;
        var output = (mod > 0 ? (number.substring(0,mod)) : '');
        for (i=0; i<Math.floor(number.length/3); i++)
        {
            if ((mod == 0) && (i == 0))
                output += number.substring(mod+3*i, mod+3*i+3);
            else
                output += ',' + number.substring(mod+3*i, mod+3*i+3);
        }
        if (flag == 0)
        {
            return ('-' + output);
        }
        else
        {
            return (output);
        }
    }
    else
    {
        if (flag == 0)
        {
            return ('-' + number);
        }
        else
        {
            return (number);
        }
    }
}
  
function replace(str, original, replacement)
{
    var result;
    result = "";
    while(str.indexOf(original) != -1)
    {
        if (str.indexOf(original) > 0)
            result = result + str.substring(0, str.indexOf(original)) + replacement;
        else
            result = result + replacement;
            str = str.substring(str.indexOf(original) + original.length, str.length);
    }
    return result + str;
}
  
function comma(what)
{
    var data = what.value;
    
    if ((event.keyCode == 107) || (event.keyCode == 187))
    {
        if ((data == "+") || (data == "0+") || (Math.floor(replace((replace(data,"+","")),",","")) == 0))
        {
            dataval = "";
        }
        else
        {
            var dataval = data + '000';
            dataval = replace(dataval,"+","");
        }
    }
    else
    {
        if (Math.floor(data) == 0)
        {
            dataval = "";
        }
        else
        {
            var dataval = data;
        }
    }
    
    what.value = add_comma(dataval);
}
/*./CC, Km 인풋박스에 자동으로 화폐단위 변환 */



	
