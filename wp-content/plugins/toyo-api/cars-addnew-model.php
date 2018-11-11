<?php
    include 'functions.php';
?>

<div class="wpcontent">
	<div class="wpbody" role="main">
		<div class="wpbody-content">
			<div class="wrap">
				<h1 class="wp-heading-inline">Add New Model</h1>
				<hr class="wp-header-end">
				<div id="poststuff">
					<div id="post-body" class="metabox-holder columns-2">
						<div id="post-body-content">
							<div class="inside">
								<div class="acf-field-list-wrap">
									<div class="acf-field-list">
										<div class="acf-field-object acf-field-object-text">
											<div class="settings" style="display: block;">
											    <table class="acf-table">
											        <tbody>
											            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
											                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Model Name</b></label>
											                    <p class="description">Vehicle's brand's model</p>
											                </td>
											                <td class="acf-input">
											                    <div class="acf-input-wrap">
											                    	<input type="text" id="maker-name" class="field-label" placeholder="ex. Toyota, Mitsubishi etc..." style="width: 100%;">
											                    </div>
											                </td>
											            </tr>
											            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
											                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Makers name</b></label>
											                    <p class="description">Vehicle's brand name</p>
											                </td>
											                <td class="acf-input">
											                    <div class="acf-input-wrap">
											                    	<select id="car-brand" class="field-type car-select" style="width: 100%">
																	</select>
											                    </div>
											                </td>
											            </tr>
											            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
											                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Model's image</b></label>
											                    <p class="description">Vehicle's Image</p>
											                </td>

											                <td class="acf-field acf-field-image acf-field-5bd2819d9aaae" data-name="news_image" data-type="image" data-key="field_5bd2819d9aaae">
															    <div class="acf-input">
															        <div class="acf-image-uploader" data-preview_size="thumbnail" data-library="all" data-mime_types="" data-uploader="wp">
															            <input name="acf[field_5bd281889aaac][5be5af211ccf5][field_5bd2819d9aaae]" value="" type="hidden">
															            <div class="show-if-value image-wrap" style="max-width: 150px">
															                <img data-name="image" src="" alt="">
															                <div class="acf-actions -hover">
															                    <a class="acf-icon -pencil dark" data-name="edit" href="#" title="Edit"></a><a class="acf-icon -cancel dark" data-name="remove" href="#" title="Remove"></a>
															                </div>
															            </div>
															            <div class="hide-if-value">
															                <p>No image selected <a data-name="add" class="acf-button button" href="#">Add Image</a></p>
															            </div>
															        </div>
															    </div>
															</td>
											            </tr>
											        </tbody>
											    </table>
												<ul class="acf-hl acf-tfoot" style="border: #DFDFDF solid 1px;">
													<li class="acf-fr">
														<a href="#" class="button button-primary button-large add-field">Save</a>
													</li>
												</ul>
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


<?php 
if (isset($_POST['fnID'])) {
    $fn = $_POST['fnID'];
	if ($fn==1) {
	    $sql = "SELECT * FROM tb_cars";
	    $result = mysqli_query($conn, $sql);
	    $arr = [];
	     $Cardata = array();
	    while($row = mysqli_fetch_array($result))
	    {
	       // This will loop through each row, now use your loop here
	        $q = "SELECT * FROM tb_model where car_id=".$row['car_id'];
	        $res = mysqli_query($conn, $q);
	        $arz = [];
	        while($rowz = mysqli_fetch_array($res))
	        {

	             array_push($arz , array(
	                            "model_id"=>$rowz['model_id'],
	                            "name"=>$rowz['model']
	                        ));
	        }

	         array_push($Cardata , array(
	                            "maker_id"=>$row['car_id'],
	                            "maker"=>$row['maker'],
	                            "models"=> $arz
	                            )
	                    );

	    }


	    header('Content-Type: application/json');
	    echo json_encode(array("cars"=>array_values($Cardata)));
	}
}
?>

<script type="text/javascript">
	$( document ).ready(function() {
	    var cars;
		$.ajax({
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
	});
	
</script>
