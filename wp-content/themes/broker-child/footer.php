<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the id=main div and all content after
 *
 * @package _tk
 */
?>
</div><!-- close .*-inner (main-content or sidebar, depending if sidebar is used) -->
</div><!-- close .row -->
</div><!-- close .container -->
</div><!-- close .main-content -->

<footer id="colophon" class="site-footer" role="contentinfo">
    <?php // substitute the class "container-fluid" below if you want a wider content area ?>
    <div class="container">
        <div class="row">
            <div class="site-footer-inner">
       

            <?php if ( is_active_sidebar( 'footer-1' ) ) : ?>
                <div class="col-md-2">
                    <?php dynamic_sidebar( 'footer-1' ); ?>
                </div>
            <?php endif; ?>

            <?php if ( is_active_sidebar( 'footer-2' ) ) : ?>
                <div class="col-md-2">
                    <?php dynamic_sidebar( 'footer-2' ); ?>
                </div>
            <?php endif; ?>

            <?php if ( is_active_sidebar( 'footer-3' ) ) : ?>
                <div class="col-md-2">
                    <?php dynamic_sidebar( 'footer-3' ); ?>
                </div>
            <?php endif; ?>

            <?php if ( is_active_sidebar( 'footer-4' ) ) : ?>
                <div class="col-md-3">
                    <?php dynamic_sidebar( 'footer-4' ); ?>
                </div>
            <?php endif; ?>

            <?php if ( is_active_sidebar( 'footer-5' ) ) : ?>
                <div class="col-md-3">
                    <?php dynamic_sidebar( 'footer-5' ); ?>
                </div>
            <?php endif; ?>


            </div>
        </div>
    </div><!-- close .container -->
</footer><!-- close #colophon -->

<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>





<?php wp_footer(); ?>



<!-- Modal sviut ratson social tab -->
<div id="sviut" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title bold">השאירו לנו משוב</h4>
      </div>
      <div class="modal-body">
        <p><?php echo do_shortcode('[contact-form-7 id="573" title="פידבק"]'); ?></p>
      </div>
    </div>

  </div>
</div>
</body>
</html>
