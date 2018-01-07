<?php
/* 
Template Name:ארכיון מאמרים
*/
$args = array(
    'type'            => 'postbypost',
	'limit'           => '',
	'format'          => 'html', 
	'before'          => '',
	'after'           => '',
	'show_post_count' => false,
	'echo'            => 1,
	'order'           => 'DESC',
    'post_type'     => 'post'
);

get_header(); ?>

<div id="container">
	<div id="content" role="main">

		<?php the_post(); ?>
		<h1 class="entry-title"><?php the_title(); ?></h1>
	
		
        <h2>Archives by Month:</h2>
        
		<ul>
            <?php wp_get_archives($args); ?>
            <?php get_template_part( 'content', 'post' ); ?>
		</ul>
		


	</div><!-- #content -->
</div><!-- #container -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>