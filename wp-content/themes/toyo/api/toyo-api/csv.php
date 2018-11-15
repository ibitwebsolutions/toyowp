<?php
    // error_reporting(0);
    include 'head.php';
?>

<style>
	#tabBulk{
		display: none;
	}
</style>

<?php

	function readCSV($csvFile){
	    $file_handle = fopen($csvFile, 'r');
	    while (!feof($file_handle) ) {
	        $line_of_text[] = fgetcsv($file_handle, 1024);
	    }
	    fclose($file_handle);
	    return $line_of_text;
	}

	// Checking value if exist or not
	function analyze($maker,$model,$size){
		$car_id;
		$return = [];
		$conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');
		// Cars
		$carResult = mysqli_query($conn,"SELECT * FROM tb_cars where `maker`='".$maker."'");

        if(mysqli_num_rows($carResult) > 0){
        	while($rowz = mysqli_fetch_array($carResult))
	        {
	        	$car_id = $rowz['car_id'];
	        }
            array_push($return, 'existing');
        }else{
            // Data New!
            $sql = "INSERT INTO tb_cars(`maker`) VALUES('".$maker."')";
            $conn->query($sql);
            $car_id = $conn->insert_id;
            array_push($return, 'added');
        }

        // Model
        $modelResult = mysqli_query($conn,"SELECT * FROM tb_model where car_id=".$car_id." AND model='".$model."'");

        if(mysqli_num_rows($modelResult) > 0){
            array_push($return, 'existing');
        }else{
            // Data New!
            echo $car_id;
            $sql = "INSERT INTO tb_model(`car_id`,`model`,`default_size`) VALUES('".$car_id."','".$model."','".$size."')";
            $conn->query($sql);
            array_push($return, 'added');
        }
        return $return;
	}
	

	function checkPair($data,$maker,$model){
		$conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');
		$car_id;
		$model_id;
		$addStat;
		$q = "SELECT * FROM `tb_cars`,`tb_model` WHERE maker='".$maker."' and model='".$model."'";
        $res = mysqli_query($conn, $q);
        while($rowz = mysqli_fetch_array($res))
        {
        	$car_id = $rowz['car_id'];
        	$model_id = $rowz['model_id'];
        }


	    $list = explode(',', $data);
	    foreach ($list as $key) {
            $pairResult = mysqli_query($conn,"SELECT * FROM tb_pairings where model_id='".$model_id."' AND item_code='".$key."'");

            if(mysqli_num_rows($pairResult) > 0){
                // Data exist!
                $addStat='existing';

            }else{
                // Data New!
                $sql = "INSERT INTO tb_pairings(`car_id`,`model_id`,`item_code`) VALUES('".$car_id."','".$model_id."','".$key."')";
                $conn->query($sql);
                $addStat='added';
            }
	    }

	    return $addStat;
	}
?>

<div class="wpcontent">
	<div class="wpbody" role="main">
		<div class="wpbody-content">
			<div class="wrap">
				<h1 class="wp-heading-inline">Toyo CSV Upload</h1>
				<hr class="wp-header-end">
				<div id="poststuff">
					<div id="post-body" class="metabox-holder columns-2">
						<div id="post-body-content">
							<div class="inside wrap">
								<h2 class="nav-tab-wrapper um-nav-tab-wrapper">
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=cars-csv&amp;tab=cars" class="nav-tab nav-tab-active">Sync</a>
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=cars-csv&amp;tab=model" class="nav-tab ">Upload CSV</a>
								</h2>
							</div>

							<div id="tabModels" style="display: <?php echo ($_GET['tab']=='cars' || $_GET['tab']=='')? 'block':'none'?>">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<div class="settings" style="display: block;">
													<form id="csv"  method="post" enctype="multipart/form-data">
													    <table class="acf-table">
													        <tbody>
													            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
													                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Cars CSV Upload</b></label>
													                    <p class="description">Note: Multiple image upload of models and should be named with model name or same name in the CSV with no space and use dash(-) instead.</p>
													                	<ul class="csvlegend">
													                		<li class="added">New Data</li>
													                		<li class="existing">Existing Data</li>
													                	</ul>
													                </td>
													            </tr>
													        </tbody>
													    </table>
													    <ul class="acf-hl acf-tfoot" style="border: #DFDFDF solid 1px;">
															<li class="acf-fr">
																<a id="add-cars-btn" href="<?php menu_page_url('cars-csv'); ?>&tab=cars&sync=sync" class="button button-primary button-large add-field">Sync</a>
															</li>
														</ul>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div class="inside" style="display: inline-block;margin-top: 20px">
								<table class="wp-list-table widefat fixed striped pages">
								    <thead>
								        <tr>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Maker</span><span class="sorting-indicator"></span></th>
								            <th scope="col" id="acf-fg-description" class="manage-column column-acf-fg-description ">Model</th>
								            <th scope="col" id="acf-fg-status" class="manage-column column-acf-fg-status">Size</th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count">Pairings</th>
								        </tr>
								    </thead>

								    <tbody>
								        <?php
								        	$stats = $_GET['sync'];
								        	if($stats=='sync'){
								        		// Set path to CSV file
												$csvFile = get_template_directory_uri().'/server/csvcars/files/cars.csv';
												 
												$csv = readCSV($csvFile);
												$count = count($csv);
												for($i=0;$i<$count;$i++){
													if($i!==0){
														echo "<tr>";
															$class = analyze($csv[$i][0],$csv[$i][1],$csv[$i][2]);
															//Cars
															echo "<td class='".$class[0]."'>".$csv[$i][0]."</td>";

															//Models and size
															echo "<td class='".$class[1]."'>".$csv[$i][1]."</td>";
															echo "<td class='".$class[1]."'>".$csv[$i][2]."</td>";


															//Pairings
															$c3 = checkPair($csv[$i][3],$csv[$i][0],$csv[$i][1]);
															echo "<td class='".$c3."'>";

															// $pairs = explode(',', $csv[$i][3]);
															// foreach ($pairs as $key) {
															// 	echo $key.' ';
															// }
															echo $csv[$i][3];
															echo "</td>";
														echo "</tr>";
													}
												}
								        	}
										?>
								    </tbody>

								    <tfoot>
								        <tr>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Maker</span><span class="sorting-indicator"></span></th>
								            <th scope="col" id="acf-fg-description" class="manage-column column-acf-fg-description ">Model</th>
								            <th scope="col" id="acf-fg-status" class="manage-column column-acf-fg-status">Size</th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count">Pairings</th>
								        </tr>
								    </tfoot>

								</table>
							</div>
							</div>

							<div id="tabTires" style="display: <?php echo ($_GET['tab']=='model')? 'block':'none'?>">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<div class="settings" style="display: block;">
												    <table class="acf-table">
												        <tbody>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Models CSV Upload</b></label>
												                    <p class="description">Note: Multiple image upload of models and should be named with model name or same name in the CSV with no space and use dash(-) instead.</p>
												                </td>
												            </tr>
												             <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label container">
												                   <form id="csvupload" class="fupload" action="https://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
																        <!-- Redirect browsers with JavaScript disabled to the origin page -->
																        <noscript><input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/"></noscript>
																        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
																        <div class="row fileupload-buttonbar">
																            <div class="col-lg-8">
																                <!-- The fileinput-button span is used to style the file input field as button -->
																                <span class="btn btn-success fileinput-button">
																                    <i class="glyphicon glyphicon-plus"></i>
																                    <span>Add files...</span>
																                    <input type="file" name="files[]" multiple>
																                </span>
																                <button type="submit" class="btn btn-primary start">
																                    <i class="glyphicon glyphicon-upload"></i>
																                    <span>Start upload</span>
																                </button>
																                <button type="reset" class="btn btn-warning cancel">
																                    <i class="glyphicon glyphicon-ban-circle"></i>
																                    <span>Cancel upload</span>
																                </button>
																                <button type="button" class="btn btn-danger delete">
																                    <i class="glyphicon glyphicon-trash"></i>
																                    <span>Delete</span>
																                </button>
																                <input type="checkbox" class="toggle">
																                <!-- The global file processing state -->
																                <span class="fileupload-process"></span>
																            </div>
																            <!-- The global progress state -->
																            <div class="col-lg-4 fileupload-progress fade">
																                <!-- The global progress bar -->
																                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
																                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
																                </div>
																                <!-- The extended global progress state -->
																                <div class="progress-extended">&nbsp;</div>
																            </div>

																            <div class="col-lg-12" style="margin-bottom: 20px">
																		        <div class="acf-input-wrap">
																					<div class="field-type" style="display: inline-block;">Search:</div>
															                    	<input type="text" class="field-type search-upload-csv">
															                    </div>
																            </div>
																        </div>
																        <!-- The table listing the files available for upload/download -->
																        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
																    </form>

												                </td>
												            </tr>
												        </tbody>
												    </table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="postbox-container-1" class="postbox-container">
							<div class="acf-box">
								<div class="inner">
								    <h1><b>Toyo Image Upload</b></h1>
								    <p>Uploading and removing images</p>
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

	include ("footer.php");
	include ("uploadFoot.php");
?>

