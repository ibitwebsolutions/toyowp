<?php
    include 'functions.php';
?>

<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.core.css">
<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.plugin.arrow.css">
<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.plugin.autocomplete.css">
<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.plugin.clear.css">
<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.plugin.focus.css">
<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.plugin.prompt.css">
<link rel="stylesheet" href="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/css/textext.plugin.tags.css">

<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/jquery-1.8.2.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.core.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.tags.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.autocomplete.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.suggestions.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.filter.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.focus.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.prompt.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.ajax.js" type="text/javascript" charset="utf-8"></script>
<script src="<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/js/textext.plugin.arrow.js" type="text/javascript" charset="utf-8"></script>


<script>
	var rootURL = "<?php echo get_template_directory_uri()?>";
</script>


<style>
	#tabBulk{
		display: none;
	}
</style>

<div class="wpcontent">
	<div class="wpbody" role="main">
		<div class="wpbody-content">
			<div class="wrap">
				<h1 class="wp-heading-inline">Edit Pattern</h1>
				<hr class="wp-header-end">
				<div id="poststuff">
					<div id="post-body" class="metabox-holder columns-2">
						<div id="post-body-content">

							<div id="tabSingle">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<form id="add-model" class="settings" style="display: block;">
												    <table class="acf-table">
												        <tbody>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Pattern Name</b></label>
												                    <p class="description">Note: Don't use SPACE use - for two words name</p>
												                </td>
												                <td class="acf-input">
												                    <div class="acf-input-wrap">
												                    	<input type="text" id="model-name" class="field-label" placeholder="ex. Toyota, Mitsubishi, Hi-Ace etc..." style="width: 100%;">
												                    </div>
												                </td>
												            </tr>

												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Pattern Code</b></label>
												                    <p class="description">Note: Don't use SPACE use - for two words name</p>
												                </td>
												                <td class="acf-input">
												                    <div class="acf-input-wrap">
												                    	<input type="text" id="model-name" class="field-label" placeholder="ex. Toyota, Mitsubishi, Hi-Ace etc..." style="width: 100%;">
												                    </div>
												                </td>
												            </tr>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Pattern Name</b></label>
												                    <p class="description">Note: Don't use SPACE use - for two words name</p>
												                </td>
												                <td class="acf-input">
												                    <div class="acf-input-wrap">
												                    	<textarea name="desc" id="desc" cols="30" rows="10" class="field-label" style="width: 100%;"></textarea>
												                    </div>
												                </td>
												            </tr>
												        </tbody>
												    </table>
													<ul class="acf-hl acf-tfoot" style="border: #DFDFDF solid 1px;">
														<li class="acf-fr">
															<button id="add-cars-btn" class="button button-primary button-large add-field">Save</button>
														</li>
													</ul>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="postbox-container-1" class="postbox-container">
							<div class="acf-box">
								<div class="inner">
								    <h1><b>Vehicle Management Dashboard</b></h1>
								    <p>Adding and updating of Makers and Models</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	var textURI = "<?=get_template_directory_uri()?>/api/toyo-api/texttext-src/data.php";
	var PHPfunctionURL = "<?=get_template_directory_uri()?>/api/toyo-api/functions.php";
	var car_id = <?php echo ($_GET['car_id'])? $_GET['car_id']:'0'; ?>;

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

    $("#add-model").submit(function(e){
		e.preventDefault();
		$.ajax({
			url: PHPfunctionURL,
			type:"POST", 
			data: {
					fnID: 4,
					model: $('#model-name').val(),
					size: $('#default-size').val(),
					car_id:$('.car-select').find(":selected").data('id'),
					pairs: $('#add-model input[type=hidden]').val()
			},
			success: function(result){
				if (result.success) {
			    	window.location ='<?php menu_page_url('cars-model'); ?>&car_id='+result.car_id+'&newID='+result.newID;
			    }
			},
			async: false
		});
	});


	$('#textarea').textext({
        plugins : 'tags focus autocomplete ajax filter',
        ajax : {
            url : textURI,
            dataType : 'json',
            cacheResults : true
        }
    });

</script>