<?php
    include 'functions.php';
    include 'head.php';
?>

<style>
	#tabBulk{
		display: none;
	}
</style>

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
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=cars-csv&amp;tab=cars" class="nav-tab nav-tab-active">Cars</a>
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=cars-csv&amp;tab=model" class="nav-tab ">Model</a>
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
														                </td>

														                <td class="acf-label">
														                	<input type="file" name="file" id="file" />
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


	function readCSV($csvFile){
	    $file_handle = fopen($csvFile, 'r');
	    while (!feof($file_handle) ) {
	        $line_of_text[] = fgetcsv($file_handle, 1024);
	    }
	    fclose($file_handle);
	    return $line_of_text;
	}
	 
	 
	// Set path to CSV file
	$csvFile = get_template_directory_uri().'/api/toyo-api/test.csv';
	 
	$csv = readCSV($csvFile);
	echo '<pre>';
	print_r($csv);
	echo '</pre>';
?>

