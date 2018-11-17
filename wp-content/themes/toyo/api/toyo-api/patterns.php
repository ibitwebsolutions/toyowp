<?php
    include 'functions.php';
    include 'head.php';
?>
<div class="wpcontent">
	<div class="wpbody" role="main">
		<div class="wpbody-content">
			<div class="wrap">
				<h1 class="wp-heading-inline">All Patterns</h1>
				<a href="<?php menu_page_url('patterns-addnew'); ?>" class="page-title-action">Add New</a>
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
									<form id="search-pattern">
										<p class="search-box" style="display: block;width: 100%">
											<label class="screen-reader-text" for="post-search-input">Search Field Groups:</label>
											<input type="submit" id="search-submit" class="button" value="Search Maker">
											<input type="search" id="search-input" name="s" value="" style="width: 87%">
										</p>
									</form>
							</div>

							<div class="inside" style="display: inline-block;margin-top: 20px">
								<table class="wp-list-table widefat fixed striped pages">
								    <thead>
								        <tr>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Pattern</span><span class="sorting-indicator"></span></th>
								            <th scope="col" id="acf-fg-description" class="manage-column column-acf-fg-description">Code</th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count">Description</th>
								        </tr>
								    </thead>

								    <tbody id="the-list"></tbody>

								    <tfoot>
								        <tr>
								            <th scope="col" id="title" class="manage-column column-title column-primary"><span>Pattern</span><span class="sorting-indicator"></span></th>
								            <th scope="col" id="acf-fg-description" class="manage-column column-acf-fg-description">Code</th>
								            <th scope="col" id="acf-fg-count" class="manage-column column-acf-fg-count">Description</th>
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

	

	$("#search-pattern").submit(function(e){
		e.preventDefault();
		$.ajax({
			url: PHPfunctionURL,
			type:"POST", 
			data: {fnID: 6,data:$("#search-input").val()},
			success: function(result){
				$('#the-list').empty();
			    for(var i=0;i<result.length;i++){
			    	$('#the-list').append(
						"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry' data-id='"+result[i].pattern_id+"'>"+
						"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
						"<strong><a class='row-title' href='#'>"+result[i].pattern+"</a></strong>"+

						"<div class='row-actions'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Pattern</a></span></div>"+
						"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
						"</td>"+
						"<td class='acf-fg-status column-acf-fg-status' data-colname='Status'>"+result[i].pattern_code+"</td>"+
						"<td class='acf-fg-description column-acf-fg-description truncate' data-colname='Description'>"+result[i].pattern_fullDesc+"</td>"+
						"</tr>"
					);
			    }
			},
			async: false
		});
	});



	$.ajax({
		url: PHPfunctionURL,
		type:"POST", 
		data: {fnID: 5},
		success: function(result){
		    for(var i=0;i<result.length;i++){
		    	$('#the-list').append(
					"<tr id='post-44' class='iedit author-self level-0 post-44 type-acf-field-group status-publish hentry' data-id='"+result[i].pattern_id+"'>"+
					"<td class='title column-title has-row-actions column-primary page-title' data-colname='Title'>"+
					"<strong><a class='row-title' href='#'>"+result[i].pattern+"</a></strong>"+

					"<div class='row-actions'><span class='acf-duplicate-field-group'><a title='Duplicate this item' href='#'>Edit Pattern</a></span></div>"+
					"<button type='button' class='toggle-row'><span class='screen-reader-text'>Show more details</span></button>"+
					"</td>"+
					"<td class='acf-fg-status column-acf-fg-status' data-colname='Status'>"+result[i].pattern_code+"</td>"+
					"<td class='acf-fg-description column-acf-fg-description truncate' data-colname='Description'>"+result[i].pattern_fullDesc+"</td>"+
					"</tr>"
				);
		    }
		},
		async: false
	});

	$("table tbody").find("[data-id='" + newID + "']").addClass('success');
</script>