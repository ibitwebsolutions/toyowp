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
				<h1 class="wp-heading-inline">Add New Model</h1>
				<hr class="wp-header-end">
				<div id="poststuff">
					<div id="post-body" class="metabox-holder columns-2">
						<div id="post-body-content">

							<div id="tabSingle">
								<div class="inside">
									<div class="acf-field-list-wrap">
										<div class="acf-field-list">
											<div class="acf-field-object acf-field-object-text">
												<div class="settings" style="display: block;">
												    <table class="acf-table">
												        <tbody>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Model Name</b></label>
												                    <p class="description">Note: Don't use SPACE use - for two words name</p>
												                </td>
												                <td class="acf-input">
												                    <div class="acf-input-wrap">
												                    	<input type="text" id="maker-name" class="field-label" placeholder="ex. Toyota, Mitsubishi, Hi-Ace etc..." style="width: 100%;">
												                    </div>
												                </td>
												            </tr>
												            <tr class="acf-field acf-field-text acf-field-setting-label" data-name="label" data-type="text">
												                <td class="acf-label"><label for="acf_fields-acfcloneindex-label"><b>Makers name</b></label>
												                    <p class="description">Vehicle's brand name</p>
												                </td>
												                <td class="acf-input">
												                    <div class="acf-input-wrap">
												                    	<select id="car-brand" class="field-type car-select" style="width: 100%"></select>
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

	include ("footer.php");
?>