<?php
    include 'functions.php';
    include 'head.php';
?>
<div class="wpcontent">
	<div class="wpbody" role="main">
		<div class="wpbody-content">
			<div class="wrap">
				<h1 class="wp-heading-inline">All Models</h1>
				<a href="<?php menu_page_url('cars-addnew-model'); ?>" class="page-title-action">Add New</a>
				<hr class="wp-header-end">
				<ul class="subsubsub">
					<li class="all">
							Makers <span class="count">(4)</span> |
					</li>
					<li class="publish">
							Models <span class="count">(4)</span>
					</li>
 				</ul>
				<div id="poststuff">
					<div id="post-body" class="metabox-holder columns-2">
						<div id="post-body-content">
							<div class="inside">
								<div class="acf-input-wrap">
									<div class="field-type" style="display: inline-block;">Search Maker:</div>
			                    	<select id="post-search-input" class="field-type car-select" style="display: inline-block;"></select>
			                    </div>
							</div>

							<div class="inside" style="display: inline-block;margin-top: 20px">
								<table class="wp-list-table widefat fixed striped pages">
								    <thead>
								        <tr>
								            <td id="cb" class="manage-column column-cb check-column">
								                <label class="screen-reader-text">ID</label>
								            </td>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Models</span><span class="sorting-indicator"></span></th>
								            <th scope="col"  class="manage-column column-acf-fg-status" style="text-align:center">Preview</th>
								            <th scope="col"  class="manage-column column-acf-fg-status" style="text-align:center">Pairs</th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count" style="text-align:center">Maker</th>
								        </tr>
								    </thead>

								    <tbody id="the-list"></tbody>

								    <tfoot>
								        <tr>
								            <td id="cb" class="manage-column column-cb check-column">
								                <label class="screen-reader-text">ID</label>
								            </td>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Models</span><span class="sorting-indicator"></span></th>
								            <th scope="col"  class="manage-column column-acf-fg-status" style="text-align:center">Preview</th>
								            <th scope="col"  class="manage-column column-acf-fg-status" style="text-align:center">Pairs</th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count" style="text-align:center">Maker</th>
								        </tr>
								    </tfoot>

								</table>
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