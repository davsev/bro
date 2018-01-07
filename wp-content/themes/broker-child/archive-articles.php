<?php
/**
 * Template Name: ארכיון מאמרים למשתמשים רשומים
 */

get_header(); 

 $args = array(
     'post_type' => 'articles',
     'post_status' => 'publish', 
 );
?>


<div class="container">
    <div class="row top-margin">
        <div class="col-md-8 col-sm-12">

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
</header>
<?php

 // The Query
$the_query = new WP_Query( $args );


?>
<?php // start the loop. ?>
<?php if( $the_query->have_posts() ): ?>
<?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>


<?php get_template_part( 'content', 'single_article_preview' ); ?>
<?php endwhile; ?>



<?php else : ?>

<?php get_template_part( 'no-results', 'search' ); ?>

<?php endif; // end of loop. ?>
<?php wp_reset_query();	 // Restore global post data stomped by the_post(). ?>

        </div>
        <?php get_sidebar(); ?>
    </div>
</div>