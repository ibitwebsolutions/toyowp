<?php
    include 'functions.php';
    include 'head.php';
?>
<div class="wpcontent">
	<div class="wpbody" role="main">
		<div class="wpbody-content">
			<div class="wrap">
				<h1 class="wp-heading-inline">All Cars</h1>
				<a href="<?php menu_page_url('cars-addnew'); ?>" class="page-title-action">Add New</a>
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
								<p class="search-box" style="display: block;">
									<label class="screen-reader-text" for="post-search-input">Search Field Groups:</label>
									<input type="search" id="post-search-input" name="s" value="">
									<input type="submit" id="search-submit" class="button" value="Search Maker">
								</p>
							</div>

							<div class="inside" style="display: inline-block;margin-top: 20px">
								<table class="wp-list-table widefat fixed striped pages">
								    <thead>
								        <tr>
								            <td id="cb" class="manage-column column-cb check-column">
								                <label class="screen-reader-text">ID</label>
								            </td>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Makers</span><span class="sorting-indicator"></span></th>
								            <th scope="col" id="acf-fg-description" class="manage-column column-acf-fg-description hidden">Description</th>
								            <th scope="col" id="acf-fg-status" class="manage-column column-acf-fg-status"><i class="acf-icon -dot-3 small acf-js-tooltip" title="Status"></i></th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count">Models</th>
								        </tr>
								    </thead>

								    <tbody id="the-list">
								    	<?php
								    		$sql = "select *,(SELECT COUNT(*) from tb_model where tb_model.car_id=tb_cars.car_id) as cn from tb_cars order by car_id desc";
										    $result = mysqli_query($conn, $sql);
										    while($rows = mysqli_fetch_array($result)){
								    	?>
									        <tr id="post-44" class="iedit author-self level-0 post-44 type-acf-field-group status-publish hentry" data-id="<?php echo $rows['car_id']?>">
									            <th scope="row" class="check-column">
									                <label class="screen-reader-text">Select Common Fields</label>
									            </th>
									            <td class="title column-title has-row-actions column-primary page-title" data-colname="Title">
									                <strong><a class="row-title" href="<?php menu_page_url('cars-model'); ?>&car_id=<?php echo $rows['car_id']?>"><?php echo ucwords($rows['maker'])?></a></strong>

									                <div class="row-actions"><span class="edit"><a href="#">Add Model</a> | </span><span class="acf-duplicate-field-group"><a title="Duplicate this item" href="#">Edit Maker</a></span></div>
									                <button type="button" class="toggle-row"><span class="screen-reader-text">Show more details</span></button>
									            </td>
									            <td class="acf-fg-description column-acf-fg-description hidden" data-colname="Description"></td>
									            <td class="acf-fg-status column-acf-fg-status" data-colname="Status"></td>
									            <td class="acf-fg-count column-acf-fg-count" data-colname="Fields"><?php echo $rows['cn']?></td>
									        </tr>
								        <?php
								    	    }
								        ?>
								    </tbody>

								    <tfoot>
								        <tr>
								            <td id="cb" class="manage-column column-cb check-column">
								                <label class="screen-reader-text">ID</label>
								            </td>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Makers</span><span class="sorting-indicator"></span></th>
								            <th scope="col" id="acf-fg-description" class="manage-column column-acf-fg-description hidden">Description</th>
								            <th scope="col" id="acf-fg-status" class="manage-column column-acf-fg-status"><i class="acf-icon -dot-3 small acf-js-tooltip" title="Status"></i></th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count">Models</th>
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

<script>
	var newID = <?php echo ($_GET['newID'])? $_GET['newID']:'0'; ?>;

	$("table tbody").find("[data-id='" + newID + "']").addClass('success');
</script>