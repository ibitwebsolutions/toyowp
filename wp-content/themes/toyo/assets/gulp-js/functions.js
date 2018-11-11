function changeOption(optionClass,data){
	$(".size-options > ul").remove();
	var collect = [];
	var count=0;
	for (var i=0; i<data.length; i++){
		count++;
		if(count%7===0){
			collect.push("<li><a href='#' class='"+optionClass+"'>"+data[i]+"</a></li>");

			$(".size-options").append(" <ul class='gp-"+count+"'></ul>");

			for(var x = 0; x < collect.length;x++){
				$(".size-options > ul.gp-"+count+"").append(collect[x]);
			}

			collect = [];
		}else{
			 if(data.length - 1 === i) {
			 	collect.push("<li><a href='#' class='"+optionClass+"'>"+data[i]+"</a></li>");
			 	$(".size-options").append(" <ul class='gp-"+count+"'></ul>");
			 	for(var y = 0; y < collect.length;y++){
					$(".size-options > ul.gp-"+count+"").append(collect[y]);
				}

				collect = [];

			 }else{
			 	collect.push("<li><a href='#' class='"+optionClass+"'>"+data[i]+"</a></li>");
			 }
		}
	};
}

function carSlide(carImg,carThumb,makerIndex){
	var CarsList = cars;
	var CarImg = carImg;
	var CarThumb = carThumb;
	var index;
	var count = CarThumb.find('.slick-slide').length;

	if ($('#model')[0].selectedIndex <= 0) {
        index = makerIndex;
    }else{
    	index = $('#model').find(':selected').data('index');
    }

    if (count>0) {
    	for(g=count;g>0;g--){
    		CarImg.slick('slickRemove',g - 1);
    		CarThumb.slick('slickRemove',g - 1);
    	}
    }
	
	for(var x=0;x<CarsList[index].models.length;x++){
		CarImg.slick('slickAdd',"<div><img data-lazy='"+templateUrl+"server/models/files/"+CarsList[index].maker+"-"+CarsList[index].models[x].name+".png' data-maker='"+CarsList[index].maker+"' data-model='"+CarsList[index].models[x].name+"'/></div>");
		CarThumb.slick('slickAdd',"<div><img data-lazy='"+templateUrl+"server/models/files/"+CarsList[index].maker+"-"+CarsList[index].models[x].name+".png' data-maker='"+CarsList[index].maker+"' data-model='"+CarsList[index].models[x].name+"'/></div>");
	}
    

}

function carData(maker,model){
	var CarsList = cars;
	for(var i=0;i<CarsList.length;i++){
		maker.append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"'>"+CarsList[i].maker+"</option>");
	}

	for(var x=0;x<CarsList[0].models.length;x++){
		model.append("<option data-id='"+CarsList[0].models[x].model_id+"' data-index='"+x+"'>"+CarsList[0].models[x].name+"</option>");
	}
}

//Modal for view details
$('#tire-result').on('show.bs.modal', function (e) {
   var button = $(e.relatedTarget);
   var recipient = button.data('code');
   var size = button.data('size');
   var lisr = button.data('lisr');
   var desc = button.prev().html();
   var img = button.prev().prev().prev().css('background-image');
   var logo = button.prev().prev().find('img').attr('src');
   var modal = $(this);

   modal.find('.modal-body #tire-img').css({'background-image':img});
   modal.find('.modal-body #tire-logo').attr('src',logo);
   modal.find('.modal-body p').html(desc);
   modal.find('.modal-body table .size').html(size);
   modal.find('.modal-body table .lisr').html(lisr);
});