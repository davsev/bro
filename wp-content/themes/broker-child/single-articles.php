<?php
/**
 * The Template for displaying all single posts.
 *
 * @package _tk
 */
get_header();
?>
<?php
while (have_posts()):
    the_post();
?>
<?php
    $user_id = get_the_author_meta('ID');
    $user_info = get_userdata($user_id);
?>
<div class="container-fluid  grey-back">
  <div class="container">
    <header class="get_the_category_list">
      <div class="row">
        <div class="col-xs-12">
          <h1 class="page-title">
            <?php
    the_title();
?>
          </h1>
        </div>
      </div>
      <div class="row" id="article-upper-bar">
        <div class="col-sm-12 text-right v-center">
          <div class="row v-center h-center">
            <?php
    echo get_avatar($user_id, 50);
?>
            <?php
    if (get_user_meta($author->ID, 'pie_profile_pic_6', true) == '<img alt="" src="http://2.gravatar.com/avatar/?s=50&amp;d=mm&amp;r=g" srcset="http://2.gravatar.com/avatar/?s=100&amp;d=mm&amp;r=g 2x" class="avatar broker-avatar avatar-50 photo avatar-default" height="50" width="50">')
      {
        echo get_avatar(get_the_author_meta('ID') , 50, $default, $alt, array( 'class' => array( 'broker-avatar' ) ));
      }
    else
      {
?>
            <div class="user-profile-avatar" style="background-image:url('<?php
        echo get_user_meta($author->ID, 'pie_profile_pic_6', true); ?>'); background-size: cover">
            </div>
            <?php
      }; ?>
          </div>
          <a href="<?php echo site_url().'/main/?bname='.$user_id; ?>">
          <span class="display-name">ברוקר-
            <?php
    echo ' ';
    the_author_meta('first_name');
    echo ' ';
    the_author_meta('last_name');
    echo '</a>';
    echo ' | ';
    ?>
<?php

$taxonomy = 'article_category';
$terms = get_terms($taxonomy); // Get all terms of a taxonomy

if ( $terms && !is_wp_error( $terms ) ) :
?>
    <ul id="article_category_list">
        <?php foreach ( $terms as $term ) { ?>
            <li><a href="<?php echo get_term_link($term->slug, $taxonomy); ?>"><?php echo $term->name; ?></a>, </li>
        <?php } ?>
    </ul>
<?php endif;?>

            </div>
          <div class="col-sm-12 broker-contact-icons v-center">
          <div id="list-contact">

          <?php echo do_shortcode('[ssba-buttons]'); ?>

               <a href="https://web.whatsapp.com/send?text=<?php
     the_title(); ?> – <?php
     urlencode(the_permalink()); ?>" data-action=”share/whatsapp/share”  data-text="עוד מאמר מדהים מאתר ברוקר"  class="contact-link whatsapp">
               </a>
               <!-- <a href="mailto:" class="contact-link email">מייל
               </a>
               <a href="#" class="contact-link facebook">פייסבוק
               </a>
               <div id="prints" href="#">
                 <?php
     //echo do_shortcode('[printfriendly]'); ?>הדפסה
               </div> -->
             </div>
        </div>
        </header>
      <!-- .entry-header -->
      </div>
    <!-- .container -->
  </div> 
  <!-- container-fluid-->
  <div class="container top-margin article" id="single-article">
    <div class="row">
      <div class="col-md-9 col-sm-12">
        <article id="post-<?php
    the_ID(); ?>" 
                 <?php
    post_class(); ?>>
        <div class="row">
          <div class="col-xs-12 the-excerpt">
            <?php
    the_excerpt();
?>
          </div>
        </div>
        <div class="row the-post">
          <div class="col-xs-12">
            <div class="entry-content">
              <div class="entry-content-thumbnail">
                <?php the_post_thumbnail(); ?>
              </div>
              <?php
    the_content();
?>
              <?php
    _tk_link_pages();
?>
            </div>
            <!-- .entry-content -->
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12 the-tags">
            <span class="tag-title">תגיות:
            </span>
          </div>
          <div class="col-xs-12">
            <?php
    echo broker_tags();
?>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12 bottom-share">
            <a href="<?php
    current_url(); ?>" data-layout="button_count" class="contact-link facebook norepeat">
              <?php
    the_field('ar_fb_share'); ?>
            </a>
            <a href="mailto:" class="contact-link email norepeat">
              <?php
    the_field('ar_mail_share'); ?>
            </a>
            <a  href="https://web.whatsapp.com/send?text=<?php
    the_title(); ?> – <?php
    urlencode(the_permalink()); ?>" data-action=”share/whatsapp/share”  data-text="עוד מאמר מדהים מאתר ברוקר"  class="contact-link whatsapp norepeat">
              <?php
    the_field('ar_wa_share'); ?>
            </a>
            <div class="fb-share-button" 
                 data-href="https://www.your-domain.com/your-page.html" 
                 data-layout="button_count">

                 
            </div>
          <?php echo do_shortcode('[aps-get-count social_media="facebook/twitter/googlePlus/instagram/youtube/soundcloud/dribbble/posts/comments" count_format="default/comma/short"]')?>

          </div>
        </div>
        <?php
    edit_post_link(__('Edit', '_tk') , '<span class="edit-link">', '</span>');
?>
        </article>
      <!-- #post-## -->
      <?php // _tk_content_nav( 'nav-below' );
    
?>
      <?php
    _tk_pagination();
?>
      <?php
endwhile; // end of the loop.

?>
    </div> 
    <!-- col-md-9 col-sm-12 -->
    <?php
get_sidebar(); ?>	
  </div>
</div>

<div class="container-fluid grey-back">
	<div class="container">
	<div class="row">
			<div class="col-xs-12">
				<h3>מאמרים נוספים שיכוללים לעניין אותכם:</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
	
		
	<?php
		$post_objects = get_field('ar_related');

		if( $post_objects ): ?>
			
			<?php foreach( $post_objects as $post): // variable must be called $post (IMPORTANT) ?>
				<?php setup_postdata($post); ?>
				<?php get_template_part( 'content', 'single_article_preview' ); ?>

			<?php endforeach; ?>
			
			<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
		<?php endif;
		?>
					
			</div>
		</div>
	</div>
</div>
<?php

get_footer();

?>
