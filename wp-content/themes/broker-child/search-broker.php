<?php
/**
 * The Template for displaying all single posts.
 *
 * @package _tk
 */

get_header(); ?>


<?php 
$args = array(
    'role' => 'Editor',
    'exclude' => $exclude_list
);
 
// Custom query.
$my_user_query = new WP_User_Query( $args );
 
// Get query results.
$editors = $my_user_query->get_results();
?>

		<?php _tk_pagination(); ?>




<?php get_footer(); ?>