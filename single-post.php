<?php
/**
 * The Template for displaying all single posts.
 *
 * @package _tk
 */

get_header(); ?>


	<?php while ( have_posts() ) : the_post(); ?>

	גשה

		<?php // _tk_content_nav( 'nav-below' ); ?>
		<?php _tk_pagination(); ?>

	<?php endwhile; // end of the loop. ?>


<?php get_footer(); ?>