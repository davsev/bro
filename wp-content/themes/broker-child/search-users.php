<?php
/**
 * The Template for displaying all single posts.
 * Template name: חיפוש ברוקרים
 * @package _tk
 */


?>
<?php //check permissions first!

 //Get only AUTHORS that have been approved
$args = array(
    'role' => 'Author',
    'meta_query' => array(
        'relation' => 'AND', 
        array(
            'key' => 'active',
            'value' => '1',
            'compare' => '='
        ),
    ),
);    


if(isset($_GET['user-search'])){
    $args = array(
        'role' => 'Author',
        's' => $_GET['s'], 
        'meta_query' => array(
            'relation' => 'AND',
            array(
                'key' => 'active',
                'value' => '1',
                'compare' => '='
            ),
            

        ),
    );    
    
}

get_header(); ?>

<?php
$users = get_users( array( 'fields' => array( 'ID' ) ) );
var_dump($users);
?>

<div id="broker-search" class="container">

    <div class="row" id="user-search-form">
        <div class="col-xs-12">
            <form class=""  role="search" action="<?php echo home_url('/'); ?>" method="get" id="adv-prop-searchform">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="col-md-6 col-xs-12 form-group">
                            <input type="text" name="userfreetxt" class="form-control" placeholder="שדה חיפוש חופשי">
                        </div>
                        <div class="col-md-2 col-xs-12 form-group">
                            <input type="text" name="area" class="form-control" placeholder="" >
                        </div>
                        <div class="col-md-2 col-xs-12 form-group">
                            <input type="text" name="s" class="form-control">
                        </div>
                        <div class="col-md-2 col-xs-12 form-group">
                            <input type="submit" name="usersearch" class="btn formsubmit form-control">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div><!-- /#user-search-form -->

    <div class="row" id="user-resaults">
        <div class="col-xs-12">
        <?php

        // Custom query.
        $my_user_query = new WP_User_Query( $args );

        $authors = $my_user_query->get_results();
        
       // Check for editors
       if ( ! empty( $authors ) ) {
        
 
        
               // Loop over editors.
               foreach ( $authors as $author ) {
            
                   // Get each editor's data.
                   $author_info = get_userdata( $author->ID );
            
                   // Show editor's name.
                   
                   ?>
                   
                   
                   
                    <div class="col-md-4 col-sm-6 text-center broker-search-thumb">
                            <div class="row v-center h-center">
                            <?php echo '<a href="'. site_url() .'/main/?bname='.$author_info->ID .'">';?>

                                <div class="user-profile-img" style="background-image:url('<?php echo get_user_meta($author->ID, 'pie_profile_pic_6', true); ?>'); background-size: cover">

                                </div>
                                
                           
                            <div class="black-text bold"> <?php echo $author_info->display_name; ?> </div>
                            </div>
                        </a>
                    </div>
                    
                    <?php
                   
               }
       
       } else {
        
           // Display "no editors found" message.
           echo __( 'לא נמצאו משתמשים שתואמים את החיפוש!', 'broker-child' );
        
       }
        
        ?>

        </div>
    </div>
</div>
<?php
get_footer(); ?>