
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

	$('#the-list').empty();
	for(var i=0;i<CarData[0].models.length;i++){

		$('#the-list').append(
			"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry'>"+
    		"<th scope='row' class='check-column'>"+
        	"<label class='screen-reader-text'>Select Common Fields</label>"+
    		"</th>"+
    		"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
        	"<strong><a class='row-title' href='#'>"+CarData[0].models[i].name.toUpperCase()+"</a></strong>"+

        	"<div class='row-actions'><span class='edit'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Model</a></span></div>"+
        	"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
    		"</td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status'></td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>ISUZU</td></tr>");
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
		$('.car-select').append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"'>"+CarsList[i].maker.toUpperCase()+"</option>");
	}

	$('#post-search-input option[data-id="' + car_id + '"]').prop("selected", true); 
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

	$('#the-list').empty();
	for(var i=0;i<CarData[0].models.length;i++){

		$('#the-list').append(
			"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry'>"+
    		"<th scope='row' class='check-column'>"+
        	"<label class='screen-reader-text'>Select Common Fields</label>"+
    		"</th>"+
    		"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
        	"<strong><a class='row-title' href='#'>"+CarData[0].models[i].name.toUpperCase()+"</a></strong>"+

        	"<div class='row-actions'><span class='edit'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Model</a></span></div>"+
        	"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
    		"</td>"+
    		"<td class='acf-fg-status column-acf-fg-status' data-colname='Status'></td>"+
    		"<td class='acf-fg-count column-acf-fg-count' data-colname='Fields' style='text-align:center'>ISUZU</td></tr>");
	}
})



$("#add-cars").submit(function(){
	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 1},
		success: function(result){
		    cars = result.cars;
		},
		async: false
	});
});