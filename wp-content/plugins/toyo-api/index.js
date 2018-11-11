
var cars;
$.ajax({
	url: templateUrl+"function.php",
	type:"POST", 
	data: {fnID: 1},
	success: function(result){
	    cars = result.cars;
	},
	async: false
});

var CarsList = cars;
for(var i=0;i<CarsList.length;i++){
	$('.car-select').append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"'>"+CarsList[i].maker+"</option>");
}


$("#add-cars").submit(function(){
});


function carData(maker,model){
	var CarsList = cars;
	for(var i=0;i<CarsList.length;i++){
		maker.append("<option data-id='"+CarsList[i].maker_id+" 'data-index='"+i+"'>"+CarsList[i].maker+"</option>");
	}

	for(var x=0;x<CarsList[0].models.length;x++){
		model.append("<option data-id='"+CarsList[0].models[x].model_id+"' data-index='"+x+"'>"+CarsList[0].models[x].name+"</option>");
	}
}