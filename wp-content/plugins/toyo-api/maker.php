<?php
    include 'functions.php';
?>

<div class="wpcontent">
    <div class="wpbody" role="main">
        <div class="wpbody-content">
            <div class="wrap">
                <h1 class="wp-heading-inline">All Pattern</h1>
                <a href="http://toyotires.localhost/wp-admin/post-new.php?post_type=acf-field-group" class="page-title-action">Add New</a>
                <hr class="wp-header-end">

                <ul class="subsubsub">
                    <li class="all">
                        <a href="http://toyotires.localhost/wp-admin/users.php" class="current">All Cars
                            <span class="count">(2)</span>
                        </a> |
                    </li>
                    <li class="approved">
                        <a href="http://toyotires.localhost/wp-admin/users.php?status=approved">Assigned 
                            <span class="count">(2)</span>
                        </a> |
                    </li>
                    <li class="awaiting_admin_review">
                        <a href="http://toyotires.localhost/wp-admin/users.php?status=awaiting_admin_review">Un Assigned 
                            <span class="count">(0)</span>
                        </a> |
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>






<a href="<?php echo site_url(); ?>/wp-admin/admin.php?page=toyo-api%2Fmaker.php" class="btn btn-primary">Add Pattern</a>
<h1>Pattern</h1>
<div class="row">
    <div class="col-md-3">
        <?php
            if(isset($_GET['pattern_edit'])) {
                $sql = "SELECT * FROM tb_patterns WHERE pattern_id = '".$_GET['pattern_edit']."' ";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);   
        ?>
                <form action="" method="POST">
                    <input type="hidden" name="pattern_id" value="<?php echo $row['pattern_id']; ?>">
                    <div class="form-group">
                        <label for="pattern_name">Pattern Nameszz</label><br>
                        <input type="text" class="form-control" id="pattern_name" name="pattern_name" value="<?php echo $row['pattern']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="pattern_code">Pattern Code</label><br>
                        <input type="text" class="form-control" id="pattern_code" name="pattern_code" value="<?php echo $row['pattern_code']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="pattern_desc">Pattern Description</label><br>
                        <input type="text" class="form-control" id="pattern_desc" name="pattern_desc" value="<?php echo $row['pattern_desc']; ?>">
                    </div>
                    <button class="btn btn-primary" type="submit" name="pattern_update">Update</button>
                </form>
            <?php  
                    } else { ?>
                    <form action="" method="POST">
                        <div class="form-group">
                            <label for="pattern_name">Pattern Name</label><br>
                            <input type="text" class="form-control" id="pattern_name" name="pattern_name" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="pattern_code">Pattern Code</label><br>
                            <input type="text" class="form-control" id="pattern_code" name="pattern_code" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="pattern_desc">Pattern Description</label><br>
                            <input type="text" class="form-control" id="pattern_desc" name="pattern_desc" placeholder="">
                        </div>
                        <button class="btn btn-primary" type="submit" name="pattern_save">Save</button>
                    </form>
        <?php        
                } 
                
        ?>
    </div>
</div>

<h1>Item</h1>
<div class="row">
    <div class="col-md-3">
        <table class="table table-striped">
        <thead>
            <tr>
            <th scope="col">id</th>
            <th scope="col">Pattern Name</th>
            <th scope="col">Pattern Code</th>
            <th scope="col">Pattern Description</th>
            <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                $sql = "SELECT * FROM tb_patterns";
                $result = mysqli_query($conn, $sql);
                if (mysqli_num_rows($result) > 0) {
                    while($row = mysqli_fetch_assoc($result)) {
            ?>
                <tr>
                    <th scope="row"><?php echo $row['pattern_id']; ?></th>
                    <td><?php echo $row['pattern']; ?></td>
                    <td><?php echo $row['pattern_code']; ?></td>
                    <td><?php echo $row['pattern_desc']; ?></td>
                    <td><a href="<?php echo site_url(); ?>/wp-admin/admin.php?page=toyo-api%2Fmaker.php&pattern_edit=<?php echo $row['pattern_id']; ?>">Edit</a></td>
                </tr>
            <?php
            
                }
            } else {
                echo '0 Result';
            }
            
            ?>
        </tbody>
        </table>
    </div>
</div>

