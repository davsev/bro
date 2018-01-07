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
<div class="col-md-4 col-xs-6 slider-single-cont-preview">
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header>                

		<a href="<?php the_permalink(); ?>">
			<div class="">
                <?php if(has_post_thumbnail()) : ?>
                    <div class="slider-thumb" style="background-image:url('<?php the_post_thumbnail_url(); ?>')"></div>
                <?php else : ?>
                    <div class="slider-thumb" style="background-image:url('127.0.0.1:3000/broker/wp-content/uploads/2017/09/broker_logo.jpg')"></div> 
                <?php endif; ?>
                <div class="text-cont article-preview-cont">
					<h3 class="thumb-slider-title"><?php the_title(); ?></h3>
                    <div>
                    <?php echo get_avatar(get_the_author_meta('ID'), 50); ?>
            
                
                    <?php 
                        echo ' '; 
                        the_author_meta('first_name');
                        echo ' ';
                        the_author_meta('last_name');
                        echo ' ';
                    ?>
                    </div>
                    <div class="entry-summary text-preview">
                        <?php the_excerpt(); ?>
                        
                    </div><!-- .entry-summary -->
                    <div>
                        <a class="btn btn-success" href="<?php the_permalink(); ?>">קרא עוד</a>
                    </div>
                </div>
            </div>
        </a>
	</header><!-- .entry-header -->

	<?php if ( is_search() || is_archive() ) : // Only display Excerpts for Search and Archive Pages ?>

	<?php else : ?>
	<div class="entry-content">
		<?php the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', '_tk' ) ); ?>
		<?php _tk_link_pages(); ?>
	</div><!-- .entry-content -->
	<?php endif; ?>
	
</article><!-- #post-## -->
</div>