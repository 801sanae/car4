/*
 * index.do 숫자 애니메이션
 */

$(document).ready(function() {
	$(".service").click(function(event) {
	function numberCounter(target_frame, target_number) {
	    this.count = 0; this.diff = 0;
	    this.target_count = parseInt(target_number);
	    this.target_frame = document.getElementById(target_frame);
	    this.timer = null;
	    this.counter();
	};
	    numberCounter.prototype.counter = function() {
	        var self = this;
	        this.diff = this.target_count - this.count;
	    
	        if(this.diff > 0) {
	            self.count += Math.ceil(this.diff / 5);
	        }
	    
	        this.target_frame.innerHTML = this.formatNumber(this.count);
	    
	        if(this.count < this.target_count) {
	            this.timer = setTimeout(function() { self.counter(); }, 55);
	        } else {
	            clearTimeout(this.timer);
	        }
	    };
	    numberCounter.prototype.formatNumber = function(num) {
	        num+= '';
	        x = num.split('.');
	        x1 = x[0];
	        x2 = x.length > 1 ? '.' + x[1] : '';
	        var rgx = /(\d+)(\d{3})/;
	        while (rgx.test(x1)) {
	            x1 = x1.replace(rgx, '$1' + ',' + '$2');
	        }
	        return x1 + x2;
	    };
	    

	new numberCounter("counter1", 52103);
	//실제 값
	//new numberCounter("counter2", ${carCnt});
});

});