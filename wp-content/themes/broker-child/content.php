<?php
/**
 * @package _tk
 */
?>


<?php // Styling Tip!

// Want to wrap for example the post content in blog listings with a thin outline in Bootstrap style?
// Just add the class "panel" to the article tag here that starts below.
// Simply replace post_class() with post_class('panel') and check your site!
// Remember to do this for all content templates you want to have this,
// for example content-single.php for the post single view. ?>
<div class="col-md-4 col-xs-6 slider-single-cont">
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header>                
		<a href="<?php the_permalink(); ?>">
			<div class="slider-cont">
				<div class="slider-thumb" style="background-image:url('<?php the_post_thumbnail_url(); ?>')"></div>
				<div class="text-cont">
					<h3 class="thumb-slider-title"><?php the_title(); ?></h3>
					<p class="thumb-slider-city"><?php the_field('prop_city'); ?></p>
					<p class="thumb-slider-desc"><?php the_field('prop_description'); ?></p>
					<p class="thumb-slider-desc">גודל: <?php the_field('prop_size'); ?></p>
					<p class="thumb-slider-desc">חדרים: <?php the_field('prop_rooms'); ?></p>
					<p class="thumb-slider-desc">קומה: <?php the_field('prop_store'); ?></p>
					<p class="thumb-slider-price"> <?php echo number_format(get_field('prop_price')); ?> ₪</p>
				</div>
			</div>
		</a>
                          
				
		<?php if ( 'post' == get_post_type() ) : ?>
		<div class="entry-meta">
			<?php _tk_posted_on(); ?>
		</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

	<?php if ( is_search() || is_archive() ) : // Only display Excerpts for Search and Archive Pages ?>
	<div class="entry-summary">
		<?php the_excerpt(); ?>
	</div><!-- .entry-summary -->
	<?php else : ?>
	<div class="entry-content">
		<?php the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', '_tk' ) ); ?>
		<?php _tk_link_pages(); ?>
	</div><!-- .entry-content -->
	<?php endif; ?>
	
</article><!-- #post-## -->
</div>