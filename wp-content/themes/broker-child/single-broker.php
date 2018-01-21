<?php
/**
 * The Template for displaying all single posts.
 * Template name: דף ברוקר
 * @package _tk
 */

 $broker_id = array( $_GET['bname'] );


//if broker not approved by user redirects user to broker search page. 
 broker_approve_check($_GET['bname']); 

$args = array(
   'role' => 'Author',
   'include' => $broker_id
);

$args2 = array(
    'author'        =>  $brokrt_id, 
    'orderby'       =>  'post_date',
    'order'         =>  'ASC',
    'posts_per_page' => -1 // no limit
  );
  

// Custom query.
$my_user_query = new WP_User_Query( $args );

// Get query results.
$authors = $my_user_query->get_results();

// Check for editors

get_header(); ?>
<?php
if(broker_banned_check($_GET['bname'])){
    echo '<div id="disable"></div>';
 };

 ?>
 <div class="container-fluid" id="single_broker_main_cont">
    <div class="container">
        <div class="row mar-bot top-margin">
            <div class="col-xs-12">
                <?php
                foreach ( $authors as $author ) {
                    $author_info = get_userdata( $author->ID );
                
                    $user_id = $author_info->ID;
                    /* start broker info */
                    ?>
                    
                    
                    <?php



    ?>
    <?php

if(broker_banned_check($_GET['bname'])){
    echo '<h2>ברוקר לא זמין במערכת</h2>';
 };
    ?>
    <div class="row flex" id="broker-info">
        <div class="col-md-3 flex" id="broker-data-right">
            <div class="row v-center h-center">
                <div class="user-profile-img" style="background-image:url('<?php echo get_user_meta($author->ID, 'pie_profile_pic_6', true); ?>'); background-size: cover">
                </div>
            </div>
            <div class="row v-center h-center" id="broker-page-link-cont">
                <div class="user-profile-img" style="background-image:url('<?php echo get_user_meta($author->ID, 'pie_upload_8', true); ?>'); background-size: cover">
                </div>
            </div>
        </div>

    <div class="col-md-4 col-xs-12">
        <h3>
    ברוקר      <span class="black bold">   <?php echo $author_info->display_name; ?></span>
        </h3>
        <div id="broker-data" class="desktop">
            <?php
            
            if(get_user_meta( $user_id, 'pie_text_7', true )):?>
            <div class="row flex">
                <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_03.png'); ?>" alt=""></div>
                <div class="col-xs-10 v-center">
            <?php if(get_user_meta( $user_id, 'url', true )){
                        echo'<a href="'.get_user_meta( $user_id, 'url', true ).'" target="_blank">'. get_user_meta( $user_id, 'pie_text_7', true ).'</a>';
                    }else{ 
                        echo get_user_meta( $user_id, 'pie_text_7', true ); 
                    }; ?>
                </div>
            </div>
            <?php endif; ?>
            
                <!-- <div class="row flex">
                    <div class="col-xs-2"><img src="<?php// echo home_url('wp-content/uploads/2017/10/broker-contact-icon_08.png'); ?>" alt=""></div>
                    <div class="col-xs-10 v-center"><?php// echo $author_info->user_email; ?></div>
                </div> -->

            <?php
           if(broker_banned_check($_GET['bname'])){

            }else{
                if(get_user_meta( $user_id, 'pie_phone_10', true )):?>
                    <div class="row flex">
                        <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_12.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><?php echo get_user_meta( $user_id, 'pie_phone_10', true ); ?></div>
                    </div>
                <?php endif; ?>
            <?php }; ?>
            <?php
            
            if(broker_banned_check($_GET['bname'])){
                
            }else{
                if(get_user_meta( $user_id, 'pie_phone_11', true )):?>
                    <div class="row flex">
                        <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_10.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><?php echo get_user_meta( $user_id, 'pie_phone_11', true ); ?></div>
                    </div>
                <?php endif; ?>
            <?php }; ?>
            <?php
            if(get_user_meta( $user_id, 'pie_text_30', true )):?> <!-- youtube-->
                <div class="row flex">
                    <div class="col-xs-2 "><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_14.png'); ?>" alt=""></div>
                    <div class="col-xs-10 v-center"><a href="<?php echo get_user_meta( $user_id, 'pie_phone_30', true ); ?>" target="_blank">לפתיחת דף היוטיוב</a></div>
                </div>
            <?php endif; ?>
            <?php
            if(get_user_meta( $user_id, 'pie_text_29', true )):?> <!-- facebook-->
                <div class="row flex">
                    <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_16.png'); ?>" alt=""></div>
                    <div class="col-xs-10 v-center"><a  href="<?php echo get_user_meta( $user_id, 'pie_phone_29', true ); ?>" target="_blank">לפתיחת דף הפייסבוק</a></div>
                </div>
            <?php endif; ?>
        </div>

        <div id="broker-data-mobile" class="mobile">
            <?php
            if(get_user_meta( $user_id, 'pie_text_7', true )):?>
                <div class="row flex agency">
                    <div class="col-xs-12 h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_03.png'); ?>" alt=""></div>
                    <div class="col-xs-12 h-center"><?php echo get_user_meta( $user_id, 'pie_text_7', true ); ?></div>
                </div>
            <?php endif; ?>



        <div id="broker-vc">
            <a class="flex col-item" href="mailto:<?php echo $user_info->user_email; ?>">
                <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_08.png'); ?>" alt=""></div>
                <div class="h-center text-center">שלחו לי מייל</div>
            </a>
            

            <?php
            if(get_user_meta( $user_id, 'pie_phone_10', true )):?>
                
                    <a class="flex col-item" href="tel:<?php echo get_user_meta( $user_id, 'pie_phone_10', true ); ?>">
                    <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_12.png'); ?>" alt=""></div>
                    <div class="h-center text-center">צלצלו אלי</div>
                    </a>
            
            <?php endif; ?>
            <?php
            if(get_user_meta( $user_id, 'pie_phone_10', true )):
            $cellphone = get_user_meta( $user_id, 'pie_phone_10', true );
            $ilprefix = '+972';
            $int_cell_phone = $ilprefix .''. substr($cellphone, 1);
            ?>
            
                    <a class="flex col-item" href="https://api.whatsapp.com/send?phone=<?php echo $int_cell_phone; ?>&text= היי, אנחנו מעוניינים בבית ברחוב <?php the_field('prop_street'); ?> <?php the_field('prop_address_no'); ?>שב<?php the_field('prop_city'); ?> אשמח אם תיצור איתי קשר">
                    <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/whatsapp.png'); ?>" alt=""></div>
                    <div class="h-center text-center">שלחו לי וואטסאפ</div>
                    </a>
            
            <?php endif; ?>
            <?php
            if(get_user_meta( $user_id, 'pie_phone_11', true )):?>
            
                    <a class="flex col-item" href="tel:<?php echo get_user_meta( $user_id, 'pie_phone_11', true ); ?>">
                    <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_10.png'); ?>" alt=""></div>
                    <div class="h-center text-center">צלצלו למשרד</div>
                    </a>
                
            <?php endif; ?>
            
            <?php
            if(get_user_meta( $user_id, 'pie_text_30', true )):?>
            
                    <a class="flex col-item"  href="<?php echo get_user_meta( $user_id, 'pie_text_30', true ); ?>" target="_blank">
                    <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_14.png'); ?>" alt=""></div>
                    <div class="h-center text-center">צפו בערוץ היוטיוב שלי</div>
                    </a>
            
            <?php endif; ?>
            <?php
            if(get_user_meta( $user_id, 'pie_text_29', true )):?>
        
                <a class="flex col-item" href="<?php echo get_user_meta( $user_id, 'pie_text_29', true ); ?>" target="_blank">
                    <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_16.png'); ?>" alt=""></div>
                    <div class="h-center text-center">צפו בדף הפייסבוק שלי</div>
                </a>
            
            <?php endif; ?>
            </div>
        </div>


    </div>
    <div class="col-md-5" id="broker-form"><?php echo do_shortcode('[contact-form-7 id="370" title="broker cf"]'); ?></div>
    </div>

                    <?php
                    
                    /* end broker info */
                }
                ?>

                <?php // _tk_content_nav( 'nav-below' ); ?>

            </div>
        </div> <!-- /row -->


        <div class="row mar-bot" id="broker-descriptios">
                <div class="col-md-9 text">
                    <?php 
                    $userdata = get_user_meta( $broker_id[0] );
                    echo $user->ID;
                    echo $userdata['description'][0];
                    ?>
                </div>
                <div class="col-md-3"><img class="img-responsive" src="<?php echo home_url('wp-content/uploads/2017/10/broker-tag.jpg'); ?>" alt=""></div>
            </div>
            
        
            
    </div>
        <div class="container-fluid" id="single-broker-prop-slider"> <!-- propertie slider -->
            <div class="container">
                <div class="row mar-bot prop-slider">
                    <div class="col-xs-12">
                        <section class="slider broker-property-slider">

                        <?php 
                        $args1 = array(
                            'author' => $broker_id[0],
                            'post_type' => 'property',
                            'post_status ' => 'publish',
                            'posts_per_page' => -1,
                        );

                        $current_user_posts = new WP_Query( $args1 );

                        if ($current_user_posts->have_posts()) :
                            while($current_user_posts->have_posts()) : $current_user_posts->the_post();
                        ?>
                        <div class="col-md-4 col-sm-6 col-sm-12 slider-single-cont">
                            <a href="<?php the_permalink(); ?>">
                                <div class="slider-cont">
                                <div class="slider-thumb" style="background-image:url('<?php echo get_the_post_thumbnail_url($post_id); ?>')"></div>
                                    <div class="text-cont">
                                        <h3 class="thumb-slider-title"><?php echo get_the_title($post_id); ?></h3>
                                        <p class="thumb-slider-city"><?php the_field('prop_city', $post_id); ?></p>
                                        <p class="thumb-slider-desc"><?php the_field('prop_description', $post_id); ?></p>

                                        <p class="thumb-slider-price"> <?php echo number_format(get_field('prop_price', $post_id)); ?> ₪</p>
                                    </div>
                                </div>
                            </a>
                            </div>
                        <?php
                            endwhile;
                        endif;
                        wp_reset_postdata();

                        ?>

                        </section>
                    </div>
                </div> <!-- /row -->
            </div>
        </div>  <!-- /propertie slider -->

        <div class="container-fluid" id="certifications"> <!-- propertie slider -->
            <div class="container">

                <section class="slider broker-cer-slider" id="cert-iamges">
                <?php
                    $certifications_number = array(33, 34, 35, 36, 37);
                    foreach($certifications_number as $file){
                    
                ?>
                
                
                    <div class="col-md-4 col-sm-6 col-sm-12 slider-single-cont">
                        <?php $cer_file = get_user_meta( $broker_id[0],'pie_upload_'.$file ); 
                        if($cer_file[0]){
                            echo '
                            <a href="'. $cer_file[0] . '" target="_blank" data-lightbox="certificates">
                            <img src='. $cer_file[0] . ' class="certification-file" data-lightbox="example-set"></a>';
                    ?>
                            <!-- <div class="slider-thumb" style="background-image:url('<?php echo $cer_file[0]; ?>'); background-size: cover; background-repeat: no-repeat"></div> -->
                
                <?php 
                        }
                    ?>
                    </div>
                <?php
                }
                ?>
                
                </section>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>


<?php 

 
?>