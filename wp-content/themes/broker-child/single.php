<?php
/**
 * The Template for displaying all single posts.
 *
 * @package _tk
 */

get_header(); ?>

    <div class="container top-margin" id="single-post">
        <div class="col-sm-9 col-xs-12">
            <?php while ( have_posts() ) : the_post(); ?>

                <?php get_template_part( 'content', 'single' ); ?>

                <?php // _tk_content_nav( 'nav-below' ); ?>
                <?php _tk_pagination(); ?>

                
            <?php endwhile; // end of the loop. ?>
        </div>
        <div class="col-sm-3 col-xs-12">
            <?php get_sidebar(); ?>
        </div>
    </div>
<?php get_footer(); ?>