<?php
/**
 * Template name: עמוד משתמש רשום
 * עמוד זה משמש כעמוד' הניהול של הברוקר
 * @package _tk
 */
if(is_user_logged_in()){
get_header(); ?>
    <div class="container-fluid" id="">
        <div class="container">
            <div class="row"></div>
                <div class="col-md-9 col-sm-12">
	<?php while ( have_posts() ) : the_post(); ?>

		<?php get_template_part( 'content', 'page' ); ?>

	<?php endwhile; // end of the loop. ?>
       
                    <!-- <section class="slider broker-property-slider"> -->

                    <?php 

$broker_id = get_current_user_id();
                    $args1 = array(
                        'author' => $broker_id,
                        'post_type' => 'property',
                        'post_status ' => 'publish',
                        'posts_per_page' => -1,
                    );

                    $current_user_posts = new WP_Query( $args1 );

                    if ($current_user_posts->have_posts()) :
                        while($current_user_posts->have_posts()) : $current_user_posts->the_post();
                    ?>
                  <?php var_dump( $current_user_posts->the_post()); ?>
                    <div class="col-md-4 col-sm-6 col-sm-12 slider-single-cont">
                        <a href="<?php the_permalink(); ?>">
                            <div class="slider-cont">
                            <div class="slider-thumb" style="background-image:url('<?php echo get_the_post_thumbnail_url($post_id); ?>')"></div>
                            <div class="text-cont">
                                <h3 class="thumb-slider-title"><?php echo get_the_title(); ?></h3>
                                <p class="thumb-slider-city"><?php the_field('prop_city'); ?></p>
                                <p class="thumb-slider-desc"><?php the_field('prop_description'); ?></p>

                                <p class="thumb-slider-price"> <?php echo number_format(get_field('prop_price', $post_id)); ?> ₪</p>
                            </div>
                            </div>
                        </a>
                        <div>
                            <a class="btn btn-default" href="127.0.0.1/brok/wp-admin/post.php?post=<?php echo get_the_ID();?>&action=edit">ערוך נכס</a>
                            <a class="btn btn-default" href="<?php the_permalink();?>">צפו בנכס</a>
                        </div>
                        </div>
                    <?php
                        endwhile;
                    endif;
                    wp_reset_postdata();

                    ?>

                    <!-- </section> -->
                </div>

                <?php if ( is_active_sidebar( 'profile-sidebar' ) ) : ?>
                <div class="col-sm-12 col-md-3">
                    <?php dynamic_sidebar( 'profile-sidebar' ); ?>
                </div>
            <?php endif; ?>
      
            </div> <!-- /row -->

        </div>
    </div>


<?php get_footer(); ?>
<?php

}else{
    wp_redirect( site_url( login, scheme ) );
    exit;  
}

?>