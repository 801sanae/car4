<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 보내기</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script type="text/javascript">
	/**
	 *
	 * jquery.charcounter.js version 1.2
	 * requires jQuery version 1.2 or higher
	 * Copyright (c) 2007 Tom Deater (http://www.tomdeater.com)
	 * Licensed under the MIT License:
	 * http://www.opensource.org/licenses/mit-license.php
	 * 
	 */
	(function($) {
		/**
		 * attaches a character counter to each textarea element in the jQuery object
		 * usage: $("#myTextArea").charCounter(max, settings);
		 */

		$.fn.charCounter = function(max, settings) {
			max = max || 100;
			settings = $.extend({
				container : "<span></span>",
				classname : "charcounter",
				format : "(%1 characters remaining)",
				pulse : true,
				delay : 0
			}, settings);
			var p, timeout;

			function count(el, container) {
				el = $(el);
				if (el.val().length > max) {
					el.val(el.val().substring(0, max));
					if (settings.pulse && !p) {
						pulse(container, true);
					}
					;
				}
				;
				if (settings.delay > 0) {
					if (timeout) {
						window.clearTimeout(timeout);
					}
					timeout = window.setTimeout(function() {
						container.html(settings.format.replace(/%1/, (max - el
								.val().length)));
					}, settings.delay);
				} else {
					container.html(settings.format.replace(/%1/, (max - el
							.val().length)));
				}
			}
			;

			function pulse(el, again) {
				if (p) {
					window.clearTimeout(p);
					p = null;
				}
				;
				el.animate({
					opacity : 0.1
				}, 100, function() {
					$(this).animate({
						opacity : 1.0
					}, 100);
				});
				if (again) {
					p = window.setTimeout(function() {
						pulse(el)
					}, 200);
				}
				;
			}
			;

			return this.each(function() {
				var container;
				if (!settings.container.match(/^<.+>$/)) {
					// use existing element to hold counter message
					container = $(settings.container);
				} else {
					// append element to hold counter message (clean up old element first)
					$(this).next("." + settings.classname).remove();
					container = $(settings.container).insertAfter(this)
							.addClass(settings.classname);
				}
				$(this).unbind(".charCounter").bind("keydown.charCounter",
						function() {
							count(this, container);
						}).bind("keypress.charCounter", function() {
					count(this, container);
				}).bind("keyup.charCounter", function() {
					count(this, container);
				}).bind("focus.charCounter", function() {
					count(this, container);
				}).bind("mouseover.charCounter", function() {
					count(this, container);
				}).bind("mouseout.charCounter", function() {
					count(this, container);
				}).bind("paste.charCounter", function() {
					var me = this;
					setTimeout(function() {
						count(me, container);
					}, 10);
				});
				if (this.addEventListener) {
					this.addEventListener('input', function() {
						count(this, container);
					}, false);
				}
				;
				count(this, container);
			});
		};

	})(jQuery);

	$(function() {
		$(".counted").charCounter(320, {
			container : "#counter"
		});
	});
</script>
</head>
<body>

<%-- <c:if test="${messageNo eq 0}"> --%>
	<input type="hidden" name="userName"
		value="<%=request.getParameter("userName")%>" />
	<input type="hidden" name="userNo"
		value="<%=request.getParameter("userNo")%>" />                 
	<div class="panel-body" style="margin-top: 0px;">
		                                   
		<form accept-charset="UTF-8" method="post"
			action="/car6/addMessageContents.do?userNo=<%=request.getParameter("userNo")%>">
			                    받는 사람 :   <%=request.getParameter("userName")%>
			                            
			<textarea class="form-control counted" name="contents"
				placeholder="Type in your message" rows="5"
				style="margin-bottom: 10px;"></textarea>
			                        
			<h6 class="pull-right" id="counter">320 characters remaining</h6>
			                        
			<button class="btn btn-info" type="submit">Post New Message</button>
			                                            
		</form>
<%-- 		</c:if> --%>
		
	<%-- 	<!-- 답장하기 -->
		<c:if test="${!empty messageNo && messageNo != 0 } ">
			<input type="hidden" name="userName"
		value="<%=request.getParameter("userName")%>" />
	<input type="hidden" name="userNo"
		value="<%=request.getParameter("userNo")%>" />                 
	<div class="panel-body" style="margin-top: 0px;">
		                                   
		<form accept-charset="UTF-8" method="post"
			action="/car6/addMessageContents.do?userNo=${receiver.userNo }">
			                    받는 사람 :   ${receiver.userName}
			                            
			<textarea class="form-control counted" name="contents"
				placeholder="Type in your message" rows="5"
				style="margin-bottom: 10px;"></textarea>
			                        
			<h6 class="pull-right" id="counter">320 characters remaining</h6>
			                        
			<button class="btn btn-info" type="submit">Post New Message</button>
			                                            
		</form>
		</c:if> --%>
	</div>
	<%--                     <form accept-charset="UTF-8" action="addMessageContents.do?userNo=<%=request.getParameter("userNo")%>"  method="post">
 --%>
</body>
</html>