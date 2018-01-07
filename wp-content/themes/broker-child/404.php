<?php
/**
 * The template for displaying 404 pages (Not Found).
 *
 * @package _tk
 */

get_header(); ?>

	<?php // add the class "panel" below here to wrap the content-padder in Bootstrap style ;) ?>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">

	
				<section class="content-padder error-404 not-found">

					<header>
						<h2 class="page-title"><?php _e( 'אופס....', '_tk' ); ?></h2>
					</header><!-- .page-header -->


					<div class="page-content">

					אופס.... 
			נראה לי שהדף שחיפשתם לא קיים באתר.

			נשמח לעניין אתכם בנושאים הבאים:

					</div><!-- .page-content -->

				</section><!-- .content-padder -->
				</div>
			</div>
		</div>

<?php get_footer(); ?>