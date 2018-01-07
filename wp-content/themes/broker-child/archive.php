<?php
/**
 * The template for displaying Archive pages.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package _tk
 */


get_header(); ?>


<?php
$term = get_term_by( 'slug', get_query_var( 'term' ), get_query_var( 'taxonomy' ) ); 




?>
<div class="container top-margin">
	<div class="row">
		<div class="col-sm-12 col-md-9">


		<?php // add the class "panel" below here to wrap the content-padder in Bootstrap style ;) ?>
		<div class="content-padder">
			<?php if ( have_posts() ) : ?>

				<header>
					<h1 class="page-title">
						<?php
							if ( is_category() ) :
								single_cat_title();

							elseif ( is_tag() ) :
								single_tag_title();

							elseif ( is_author() ) :
								/* Queue the first post, that way we know
								* what author we're dealing with (if that is the case).
								*/
								the_post();
								printf( __( 'Author: %s', '_tk' ), '<span class="vcard">' . get_the_author() . '</span>' );
								/* Since we called the_post() above, we need to
								* rewind the loop back to the beginning that way
								* we can run the loop properly, in full.
								*/
								rewind_posts();

							elseif ( is_day() ) :
								printf( __( 'Day: %s', '_tk' ), '<span>' . get_the_date() . '</span>' );

							elseif ( is_month() ) :
								printf( __( 'Month: %s', '_tk' ), '<span>' . get_the_date( 'F Y' ) . '</span>' );

							elseif ( is_year() ) :
								printf( __( 'Year: %s', '_tk' ), '<span>' . get_the_date( 'Y' ) . '</span>' );

							elseif ( is_tax( 'post_format', 'post-format-aside' ) ) :
								_e( 'Asides', '_tk' );

							elseif ( is_tax( 'article_category') ) :
								
								echo 'מאמרים בנושא ' . $term->name;
								
								elseif ( is_tax( 'tags') ) :
									
									echo 'מאמרים בנושא ' . $term->name;
									
							elseif ( is_tax( 'post_format', 'post-format-image' ) ) :
								_e( 'Images', '_tk');

							elseif ( is_tax( 'post_format', 'post-format-video' ) ) :
								_e( 'Videos', '_tk' );

							elseif ( is_tax( 'post_format', 'post-format-quote' ) ) :
								_e( 'Quotes', '_tk' );

							elseif ( is_tax( 'post_format', 'post-format-quote' ) ) :
									_e( 'Quotes', '_tk' );

							elseif ( is_tax( 'post_format', 'post-format-link' ) ) :
								_e( 'Links', '_tk' );

								
							else :
								_e( 'כל המאמרים', '_tk' );

							endif;
						?>
					</h1>
					
					<p>
					
					<?php 
						 if ( is_tax( 'article_category') ) :
						echo $term->count . ' מאמרים בנושא זה.';  

						elseif ( is_tax( 'tags') ) :
							echo $term->count . ' מאמרים בנושא זה.';  
						
						 else:
							echo $count_posts = wp_count_posts( 'articles' )->publish . ' מאמרים.';  
					endif;
						
					?>
					</p>
					<?php
						// Show an optional term description.
						$term_description = term_description();
						if ( ! empty( $term_description ) ) :
							printf( '<div class="taxonomy-description">%s</div>', $term_description );
						endif;
					?>
				</header><!-- .page-header -->
			
				
				<?php /* Start the Loop */ ?>
				<?php while ( have_posts() ) : the_post(); ?>
						
					<?php


						/*the tmplate is in file .content-post.php*/
						get_template_part( 'content', 'single_article_preview' );
						get_post_format();
					?>


				<?php endwhile; ?>
			
				<?php // _tk_content_nav( 'nav-below' ); ?>
				<?php _tk_pagination(); ?>
			<?php else : ?>

				<?php get_template_part( 'no-results', 'archive' ); ?>

			<?php endif; ?>

		</div><!-- .content-padder -->

		</div>
		
			<?php get_sidebar(); ?>
		
	</div>
</div>



<?php get_footer(); ?>

