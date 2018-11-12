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
				<h1 class="wp-heading-inline">Toyo Images Upload</h1>
				<hr class="wp-header-end">
				<div id="poststuff">
					<div id="post-body" class="metabox-holder columns-2">
						<div id="post-body-content">
							<div class="inside wrap">
								<h2 class="nav-tab-wrapper um-nav-tab-wrapper">
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=toyo-images&amp;tab=models" class="nav-tab nav-tab-active">Models</a>
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=toyo-images&amp;tab=tires" class="nav-tab ">Tire Patterns</a>
									<a href="http://toyotires.localhost/wp-admin/admin.php?page=toyo-images&amp;tab=logos" class="nav-tab ">Pattern Logos</a>
								</h2>
							</div>

							<div id="tabModels" style="display: <?php echo ($_GET['tab']=='models' || $_GET['tab']=='')? 'block':'none'?>">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<div class="settings" style="display: block;">
												    <table class="acf-table">
												        <tbody>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Models Multiple Upload</b></label>
												                    <p class="description">Note: Multiple image upload of models and should be named with model name or same name in the CSV with no space and use dash(-) instead.</p>
												                </td>
												            </tr>
												             <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label container">
												                    <form id="fileupload" class="fupload" action="https://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
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
															                    	<input type="text" class="field-type search-upload-models">
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

							<div id="tabTires" style="display: <?php echo ($_GET['tab']=='tires')? 'block':'none'?>">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<div class="settings" style="display: block;">
												    <table class="acf-table">
												        <tbody>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Tire Pattern Multiple Upload</b></label>
												                    <p class="description">Note: Multiple image upload of models and should be named with model name or same name in the CSV with no space and use dash(-) instead.</p>
												                </td>
												            </tr>
												             <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label container">
												                    <form id="tireupload" action="https://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
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
																            <div class="col-lg-5 fileupload-progress fade">
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
															                    	<input type="text" class="field-type search-upload-tires">
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

							<div id="tabLogos" style="display: <?php echo ($_GET['tab']=='logos')? 'block':'none'?>">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<div class="settings" style="display: block;">
												    <table class="acf-table">
												        <tbody>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Pattern Logo Multiple Upload</b></label>
												                    <p class="description">Note: Multiple image upload of models and should be named with model name or same name in the CSV with no space and use dash(-) instead.</p>
												                </td>
												            </tr>
												             <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label container">
												                    <form id="logoupload" action="https://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
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
																            <div class="col-lg-5 fileupload-progress fade">
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
															                    	<input type="text" class="field-type search-upload-logos">
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
?>