"use strict";	

//Asynchronus Background image loading
var imgBG = document.createElement("img");


imgBG.onload = function(){
	 $('body').css('background-image', "url("+this.src+")");
}

setTimeout(function(){
	imgBG.src = templateUrl+"assets/img/bg.jpg";
},50)

$('.result-slide').slick({
	slidesToShow: 4,
	slidesToScroll: 1,
	lazyLoad: 'ondemand',
	prevArrow: $(".leftNav"),
  	nextArrow: $(".rightNav"),
	fade: false,
	dots: false,
	centerMode: false,
	focusOnSelect: true,
	adaptiveHeight: true,
	responsive: [
    {
      breakpoint: 640,
      settings: "unslick"
    }
  ]
});