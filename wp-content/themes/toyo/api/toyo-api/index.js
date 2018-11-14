
var cars;
if (car_id>0) {
	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 2,carID: car_id},
		success: function(result){
		    cars = result.cars;
		},
		async: false
	});

	var CarData = cars;
	var maker = CarData[0].maker;

	$('#the-list').empty();
	var pairCollection="";
	for(var i=0;i<CarData[0].models.length;i++){

		for(y=0;y<CarData[0].models[i].pairs.length;y++){
			pairCollection+="("+CarData[0].models[i].pairs[y].pair_codes+")";
		}

		$('#the-list').append(
			"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry' data-id='"+CarData[0].models[i].model_id+"'>"+
    		"<th scope='row' class='check-column'>"+
        	"<label class='screen-reader-text'>Select Common Fields</label>"+
    		"</th>"+
    		"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
        	"<strong><a class='row-title' href='#'>"+CarData[0].models[i].name.toUpperCase()+"</a></strong>"+

        	"<div class='row-actions'><span class='edit'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Model</a></span></div>"+
        	"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
    		"</td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status' style='text-align:center'><img src='"+rootURL+"/server/models/files/thumbnail/"+maker+"-"+CarData[0].models[i].name+".png'/></td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status' style='text-align:center'>"+CarData[0].models[i].default_size+"</td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>"+pairCollection+"</td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>"+maker.toUpperCase()+"</td></tr>");

		pairCollection="";
	}


	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 1},
		success: function(result){
		    cars = result.cars;
		},
		async: false
	});

	var CarsList = cars;
	for(var i=0;i<CarsList.length;i++){
		if (CarsList[i].maker_id==car_id) {
			$('.car-select').append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"' selected>"+CarsList[i].maker.toUpperCase()+"</option>");			
		}else{
			$('.car-select').append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"'>"+CarsList[i].maker.toUpperCase()+"</option>");			
		}
	}

	// $('#post-search-input option[data-id="' + car_id + '"]').prop("selected", true); 
}else{
	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 1},
		success: function(result){
		    cars = result.cars;
		},
		async: false
	});

	var CarsList = cars;
	for(var i=0;i<CarsList.length;i++){
		$('.car-select').append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"'>"+CarsList[i].maker.toUpperCase()+"</option>");
	}


	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 2,carID: $('.car-select').find(':selected').data('id')},
		success: function(result){
		    cars = result.cars;
		},
		async: false
	});

	var CarData = cars;
	var maker = CarData[0].maker;

	$('#the-list').empty();
	var pairCollection="";
	for(var i=0;i<CarData[0].models.length;i++){

		for(y=0;y<CarData[0].models[i].pairs.length;y++){
			pairCollection+="("+CarData[0].models[i].pairs[y].pair_codes+")";
		}

		$('#the-list').append(
			"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry' data-id='"+CarData[0].models[i].model_id+"'>"+
    		"<th scope='row' class='check-column'>"+
        	"<label class='screen-reader-text'>Select Common Fields</label>"+
    		"</th>"+
    		"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
        	"<strong><a class='row-title' href='#'>"+CarData[0].models[i].name.toUpperCase()+"</a></strong>"+

        	"<div class='row-actions'><span class='edit'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Model</a></span></div>"+
        	"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
    		"</td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status' style='text-align:center'><img src='"+rootURL+"/server/models/files/thumbnail/"+maker+"-"+CarData[0].models[i].name+".png'/></td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status' style='text-align:center'>"+CarData[0].models[i].default_size+"</td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>"+pairCollection+"</td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>"+maker.toUpperCase()+"</td></tr>");

		pairCollection="";
	}
}


$('.car-select').change(function(){
	var id = $(this).find(':selected').data('id');
	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 2,carID: id},
		success: function(result){
		    cars = result.cars;

		    console.log(cars);
		},
		async: false
	});

	var CarData = cars;
	var maker = CarData[0].maker;

	$('#the-list').empty();
	var pairCollection="";
	for(var i=0;i<CarData[0].models.length;i++){

		for(y=0;y<CarData[0].models[i].pairs.length;y++){
			pairCollection+="("+CarData[0].models[i].pairs[y].pair_codes+")";
		}

		$('#the-list').append(
			"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry' data-id='"+CarData[0].models[i].model_id+"'>"+
    		"<th scope='row' class='check-column'>"+
        	"<label class='screen-reader-text'>Select Common Fields</label>"+
    		"</th>"+
    		"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
        	"<strong><a class='row-title' href='#'>"+CarData[0].models[i].name.toUpperCase()+"</a></strong>"+

        	"<div class='row-actions'><span class='edit'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Model</a></span></div>"+
        	"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
    		"</td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status' style='text-align:center'><img src='"+rootURL+"/server/models/files/thumbnail/"+maker+"-"+CarData[0].models[i].name+".png'/></td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status' style='text-align:center'>"+CarData[0].models[i].default_size+"</td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>"+pairCollection+"</td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>"+maker.toUpperCase()+"</td></tr>");

		pairCollection="";
	}
});