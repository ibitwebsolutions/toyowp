"use strict";	

//Asynchronus Background image loading
var imgBG = document.createElement("img");
var img1 = document.createElement("img");

imgBG.onload = function(){
	 $('body').css('background-image', "url("+this.src+")");
}

img1.onload = function(){
	 $('#chart').attr('src', this.src);
}

//Tire select by size Script
var orig = document.getElementById("chart");
var aspectRatioIMG = document.createElement("img");
var rimIMG = document.createElement("img");
var sizeSet = [];

setTimeout(function(){
	imgBG.src = templateUrl+"assets/img/bg.jpg";
	img1.src = templateUrl+"assets/img/1.png";

	aspectRatioIMG.src = templateUrl+"assets/img/2.png";
	rimIMG.src = templateUrl+"assets/img/3.png";
},50)



$('#manualSearch').bind('input', function(){
	if($(this).val()==""){
		$("ul.suggestList").empty();
	}
	else{
		$("ul.suggestList").empty();
	  	$.ajax({
			url: templateUrl+"api/search.php",
			type:"POST", 
			data: {term :$(this).val()},
			success: function(result){
				for(var i=0;i<result.length;i++){
					$("ul.suggestList").append("<li>"+result[i]+"</li>");
				}
			},
			async: false
		});
	}
});


$('ul.suggestList').on('click','li', function () {
    $('#manualSearch').val($(this).html());
	$("ul.suggestList").empty();
});

changeOption("tire-width",Twidth);

$(".tire-width").click(function(e){
	e.preventDefault();
	sizeSet.push({"width":$(this).html()});
	changeOption("tire-ratio",Tratio);
	orig.src = aspectRatioIMG.src;
	$('#skip').attr('style','display: inline-block');
});

$(".size-options").on("click", "a.tire-ratio", function(){
    sizeSet.push({"ratio":$(this).html()});
	changeOption("tire-rim",Trim);
	orig.src = rimIMG.src;
	$('#skip').attr('style','display: none');
});

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
	adaptiveHeight: true
});

$(".size-options").on("click", "a.tire-rim", function(){
    sizeSet.push({"rim":$(this).html()});
    var r;
    (sizeSet[1].ratio)? r=sizeSet[1].ratio:r="";

    $.ajax({
		url: templateUrl+"api/function.php",
		type:"POST", 
		data: {
				fnID: 3,
				width:sizeSet[0].width,
				ratio:r,
				rim:sizeSet[2].rim
		},
		success: function(result){
			if (r) {
				r="Tire Size: "+sizeSet[0].width+"/"+sizeSet[1].ratio+" R "+sizeSet[2].rim;
			}else{
				r="Tire Size: "+sizeSet[0].width+" R "+sizeSet[2].rim;
			}
			$('.carsearch-box').css({"display":"none"});
			$('.result-box').css({"display":"block"});
			$('#search-value').html(r);
			$('#sublist').html(result.result.length+" result for "+r);
			
			for(var i=0;i<result.result.length;i++){
				$('.result-slide').slick('slickAdd',"<div><div class='result-item text-center'><div class='tire-img' style='background-image: url("+templateUrl+"assets/img/tire-pattern/"+result.result[i].pattern_code+".png);'></div><div class='tire-logo'><img data-lazy='"+templateUrl+"assets/img/tire-pattern/"+result.result[i].pattern_code+"-logo.png' alt=''> </div><p>"+result.result[i].pattern_desc+"</p><a href='#' class='btn-custom'>Veiw Details ></a></div></div>");

			}
		},
		async: false
	});
});

$('#skip').click(function(){
	sizeSet.push({"ratio":""});
	changeOption("tire-rim",Trim);
	orig.src = rimIMG.src;
	$('#skip').attr('style','display: none');
});

$(document).ready(function(){

  	$('.car-select').slick({
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  prevArrow: $(".leftmain"),
      nextArrow: $(".rightmain"),
	  fade: true,
	  asNavFor: '.car-thumb'
	});

	$('.car-thumb').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  lazyLoad: 'ondemand',
	  arrows: false,
	  asNavFor: '.car-select',
	  dots: true,
	  centerMode: false,
	  focusOnSelect: true,
	  responsive: [
	    {
	      breakpoint: 990,
	      settings: {
	        slidesToShow: 2,
	        slidesToScroll: 1,
	        infinite: true,
	        dots: true,
	        centerMode: false,
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
	        slidesToShow: 1,
	        slidesToScroll: 1
	      }
	    }
	  ]
	});

	$('.news-slider').slick({
		autoplay:true,
		slidesToShow: 3,
		slidesToScroll: 1,
		lazyLoad: 'ondemand',
		prevArrow: $(".prev"),
		nextArrow: $(".next"),
		fade: false,
		dots: false,
		centerMode: false,
		focusOnSelect: true,
		adaptiveHeight: true,
		cssEase: 'linear',
		infinite: true
	});

	$('.newsmini-slider').slick({
		autoplay:true,
		slidesToShow: 1,
		slidesToScroll: 1,
		lazyLoad: 'ondemand',
		arrows: false,
		fade: true,
		dots: false,
		centerMode: false,
		focusOnSelect: false,
		adaptiveHeight: true,
		cssEase: 'linear',
		infinite: true,
  		speed: 500,
	});

	carData($('#maker'),$('#model'));//First load
	carSlide($('.car-select'),$('.car-thumb'),0);//Second load

	$('#maker').change(function(e){
		var CarsList = cars;
		var index = $(this).find(':selected').data('index');
		$(this).val='';
		$("#model").children('option').remove();

		for(var x=0;x<CarsList[index].models.length;x++){
			$('#model').append("<option data-id='"+CarsList[index].models[x].model_id+"' data-index='"+x+"'>"+CarsList[index].models[x].name+"</option>");
		}

		$('.car-thumb').slick('slickRemove');

		carSlide($('.car-select'),$('.car-thumb'),index);

	});

	$('#model').change(function(e){
		var CarsList = cars;
		var index = $(this).find(':selected').data('index');

		var slideno = index + 1;
		$('.car-thumb').slick('slickGoTo', slideno - 1);
	});


	$('#car-search').submit(function(e){
		e.preventDefault();
		$.ajax({
			url: templateUrl+"api/function.php",
			type:"POST", 
			data: {fnID: 2,
				   carID:$("#maker option:selected").data("id"),
				   modelID:$("#model option:selected").data("id")
			},
			success: function(result){
				$('.carsearch-box').css({"display":"none"});
				$('.result-box').css({"display":"block"});
				$('#search-value').html($("#maker option:selected").html().toUpperCase()+" "+$("#model option:selected").html().toUpperCase());
				$('#sublist').html(result.result.length+" result for "+$("#maker option:selected").html().toUpperCase()+" "+$("#model option:selected").html().toUpperCase());
				
				for(var i=0;i<result.result.length;i++){
					$('.result-slide').slick('slickAdd',"<div><div class='result-item text-center'><div class='tire-img' style='background-image: url("+templateUrl+"assets/img/tire-pattern/"+result.result[i].pattern_code+".png);'></div><div class='tire-logo'><img data-lazy='"+templateUrl+"assets/img/tire-pattern/"+result.result[i].pattern_code+"-logo.png' alt=''> </div><p>"+result.result[i].pattern_desc+"</p><a href='#' class='btn-custom'>Veiw Details ></a></div></div>");
				}
			},
			async: false
		});
	});

}); 



$('#manual-searchForm').submit(function(e){
	e.preventDefault();
	$.ajax({
		url: templateUrl+"api/function.php",
		type:"POST", 
		data: {fnID: 4,
			   term: $("#manualSearch").val()
		},
		success: function(result){
			$('.carsearch-box').css({"display":"none"});
			$('.result-box').css({"display":"block"});
			$('#search-value').html("Tire size: "+$("#manualSearch").val());
			$('#sublist').html(result.result.length+" result for "+$("#manualSearch").val());
			
			for(var i=0;i<result.result.length;i++){
				$('.result-slide').slick('slickAdd',"<div><div class='result-item text-center'><div class='tire-img' style='background-image: url("+templateUrl+"assets/img/tire-pattern/"+result.result[i].pattern_code+".png);'></div><div class='tire-logo'><img data-lazy='"+templateUrl+"assets/img/tire-pattern/"+result.result[i].pattern_code+"-logo.png' alt=''> </div><p>"+result.result[i].pattern_desc+"</p><a href='#' class='btn-custom'>Veiw Details ></a></div></div>");
			}
		},
		async: false
	});
});