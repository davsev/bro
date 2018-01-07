<?php
/**
 * @package _tk
 */

$user_id = get_the_author_meta('ID');
$user_info = get_userdata($user_id) ;
?>


<div class="container-fluid  grey-back"  id="broker-info">
    <div class="container">
        <header class="get_the_category_list">
            <div class="row">
                <div class="col-sx-12">
                    <h1 class="page-title"><?php the_title(); ?></h1>
                </div>

            </div>
            <div class="row">
                <div class="col-md-6 col-md-12 text-right v-center">
                <a href="<?php echo site_url().'/main/?bname='.$user_id; ?>">
                <img src="<?php echo get_user_meta(get_the_author_meta('ID'), 'pie_profile_pic_6', true)?>" class="broker-small-image" alt=" <?php echo get_the_author_meta('display_name'); ?> profile image">



                    <span class="display-name">ברוקר-
                        <?php echo get_the_author_meta('display_name'); ?>
                    </span>
                </a>
                </div>
                
                <div class="col-md-6 col-md-12 broker-contact-icons v-center">
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
                <!-- <div class="fb-share-button" 
                     data-href="https://www.your-domain.com/your-page.html" 
                     data-layout="button_count">
                </div> -->
              </div>
            </div>
        </header><!-- .entry-header -->

    </div>
</div>

<div class="container-fluid">
    <div class="container">

        <div class="row" id="icon-n-slider">
            <div class="col-sm-4" id="prop-details">
                <div class="sale">למכירה</div>
                <div class="prop-price">מחיר מבוקש <?php echo number_format(get_field('prop_price')); ?> ₪</div>
                <div id="location" class="flex address-icon-row">
                    <div class="street col-xs-1 prop-single-icon vertical-center-flex">
                        <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_03-1.png'); ?>">
                    </div>
                    <div class="street col-xs-11 bluer">
                    <?php if(the_field('prop_type')){
                        the_field('prop_type');
                        } ?>
                        
                        <?php echo' ב'. the_field('prop_street'); ?>  <?php the_field('prop_address_no'); ?>
                        <br/>
                        <span class="bold"><?php the_field('prop_city'); ?></span>
                    </div>
                </div>
                <div id="icons-cont" class="flex">

                    <div class="flex single-icon-row"><!-- מספר חדדרים -->
                        <div class="street col-xs-12 prop-single-icon vertical-center-flex black bold">
                            <?php the_field('prop_rooms'); ?> חדרים
                        </div>
                    </div><!-- מספר חדדרים -->

                    <div class="flex single-icon-row"><!-- מספר קומה-->
                        <div class="street col-xs-12 prop-single-icon vertical-center-flex black bold">
                            <?php if(get_field('prop_store') != 'קרקע'): ?>

                                קומה                          <?php the_field('prop_store'); ?>              מתוך           <?php the_field('prop_store_from'); ?>

                            <?php else: ?>
                                קומת קרקע
                            <?php endif; ?>
                        </div>
                    </div><!-- מספר קומה -->


                    <div class="flex single-icon-row"><!-- גודל במ"ר -->
                        <div class="street col-xs-12 prop-single-icon vertical-center-flex black bold">
                            שטח הנכס: <?php the_field('prop_size'); ?> מ"ר
                        </div>
                    </div><!-- גודל במ"ר -->

                    <!--      שנת בנייה: -->
                    <?php if(get_field('prop_year') != ''): ?>
                    <div class="flex single-icon-row">
                        <div class="street col-xs-12 prop-single-icon vertical-center-flex black bold">

                            שנת בנייה: <?php the_field('prop_year'); ?>
                        </div>
                    </div>
                    <?php endif; ?><!--      שנת בנייה: -->


                    <?php if(get_field('prop_arnona') != ''): ?><!--  תשלום ארנונה: -->
                    <div class="flex single-icon-row">
                        <div id="arnona" class="street col-xs-12 prop-single-icon vertical-center-flex black bold">

                            ארנונה: ₪<?php echo number_format(get_field('prop_arnona')); ?>

                        </div>
                    </div>
                    <?php endif; ?><!--     תשלום ארנונה: -->


                    <?php if(get_field('prop_vaad') != ''): ?><!--  תשלום ועד: -->
                    <div class="flex single-icon-row">
                        <div id="vaad" class="street col-xs-12 prop-single-icon vertical-center-flex black bold">

                            ועד בית: ₪<?php echo number_format(get_field('prop_vaad')); ?>

                        </div>
                    </div>
                    <?php endif; ?><!--     תשלום ועד: -->

                    <?php if(get_field('prop_condition') != ''): ?><!--  מצב הנכס: -->
                    <div class="flex single-icon-row">
                        <div id="condition" class="street col-xs-12 prop-single-icon vertical-center-flex black bold">

                            מצב הנכס: <?php the_field('prop_condition'); ?>

                        </div>
                    </div>
                    <?php endif; ?><!--     מצב הנכס: -->

                    <?php if(get_field('prop_anot') != ''): ?><!--  רישום הנכס: -->
                    <div class="flex single-icon-row">
                        <div id="condition" class="street col-xs-12 prop-single-icon vertical-center-flex black bold">

                            רישום הנכס: <?php the_field('prop_anot'); ?>

                        </div>
                    </div>
                    <?php endif; ?><!--     רישום הנכס: -->



                    <div class="flex single-icon-row"><!-- מרפסת -->
                        <?php
                        // vars
                        $prop_tech = get_field('prop_tech');

                        // check
                        if ($prop_tech && in_array('מרפסת', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_06-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                יש מרפסת
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_06-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין מרפסת
                            </div>
                        <?php endif; ?>


                    </div><!-- /מרפסת -->

                    <div class="flex single-icon-row"><!-- חניה -->
                        <?php
                        // check
                        if ($prop_tech && in_array('חניה', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_08-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                חניה
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_08-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין חניה
                            </div>
                        <?php endif; ?>


                    </div><!-- חניה -->
                    <div class="flex single-icon-row"><!-- מעלית -->
                        <?php
                        // check
                        if ($prop_tech && in_array('מעלית', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_10-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                מעלית
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_10-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין מעלית
                            </div>
                        <?php endif; ?>


                    </div><!-- מעלית -->
                    <div class="flex single-icon-row"><!-- מחסן -->
                        <?php

                        if ($prop_tech && in_array('מחסן', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_12-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                מחסן
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_12-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין מחסן
                            </div>
                        <?php endif; ?>


                    </div><!-- מחסן -->
                    <div class="flex single-icon-row"><!-- ממ"ד -->
                        <?php

                        // check
                        if ($prop_tech && in_array('ממ"ד', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_14-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                ממ"ד
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_14-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין ממ"ד
                            </div>
                        <?php endif; ?>


                    </div><!-- ממ"ד -->
                    <div class="flex single-icon-row"><!-- מזגן -->
                        <?php

                        // check
                        if ($prop_tech && in_array('מזגן', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_16-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                מזגן
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_16-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין מזגן
                            </div>
                        <?php endif; ?>


                    </div><!-- /מזגן -->
                    <div class="flex single-icon-row"><!-- נגיש לנכים -->
                        <?php

                        // check
                        if ($prop_tech && in_array('גישה לנכים', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_18-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                נגיש לנכים
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_18-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין גישה לנכים
                            </div>
                        <?php endif; ?>


                    </div><!-- /גישה לנכים -->
                    <div class="flex single-icon-row"><!-- סורגים -->
                        <?php

                        // check
                        if ($prop_tech && in_array('גישה לנכים', $prop_tech)): ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop_icon_20-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 black bold">
                                סורגים
                            </div>
                        <?php else: ?>
                            <div class="street col-xs-2 prop-single-icon vertical-center-flex">
                                <img src="<?php echo home_url('wp-content/uploads/2017/10/prop-icon-dis_20-1.png'); ?>">
                            </div>
                            <div class="street col-xs-10 grey bold">
                                אין סורגים
                            </div>
                        <?php endif; ?>


                    </div><!-- /סורגים -->
                </div><!-- /icons container -->
                <div class="prop_call">
                    <a href="tel:<?php echo get_user_meta( $user_id, 'pie_phone_10', true ); ?>">התקשרו עכשיו</a>
                </div>
            </div>


            <div class="col-sm-8" id="single-prop-slider">


                <div id="the-tabs">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#pictures" aria-controls="pictures"
                                                                  role="tab"
                                                                  data-toggle="tab">גלריית תמונות</a></li>
                     
                        <li role="presentation"><a href="#video" aria-controls="video" role="tab" data-toggle="tab">וידאו
                            </a>
                        </li>
                      
                    </ul>


                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="pictures">

                        <?php $images = get_field('prop_gallery');
           
                    if(count($images) > 1):
                        if ($images): ?>
                            <div class="regular slider slider-for">
                                <?php foreach ($images as $image): ?>
                                    <div class="slick-container">

                                    <a href="<?php echo $image['url']; ?>" target="_blank" data-lightbox="porperty">
                                        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" class="prop-image-slider"/>
                                    </a>

                                    </div>
                                <?php endforeach; ?>
                            </div>
                            <div class="slider slider-car">

                                <?php foreach ($images as $image): ?>
                                    <div>
                                        <img src="<?php echo $image['url']; ?>"
                                                alt="<?php echo $image['alt']; ?>"/>

                                    </div>
                                <?php endforeach; ?>
                            </div>
                        <?php endif; ?>

                    <?php elseif(count($images) == 1 && $images != false ):  ?>
                        <?php if($images): ?>
                            <div class="regular slider slider-for" >
                                <?php foreach ($images as $image): ?>
                                    <img src="<?php echo $image['url']; ?>"
                                        alt="<?php echo $image['alt']; ?>" class="prop-image-slider-single-image"/>

                                <?php endforeach; ?>
                            </div>
                        <?php endif; ?>
                        
                    <?php elseif(count($images) == 1 && $images == false ): ?>
                        <div class="regular slider slider-for prop-image-slider-single-image" style="background-image:url('<?php echo site_url(); ?>/wp-content/uploads/2017/12/no-image.jpg'); min-height: 575px; background-size: inherit;">
                        </div>
                    <?php endif; ?>


                        </div><!-- /#pictures -->
                        <div role="tabpanel" class="tab-pane" id="video">
                            <div class="embed-responsive embed-responsive-4by3">
                                <?php the_field('prop_video'); ?>
                            </div>
                        </div>

                    </div>

                </div> <!-- /the-tabs -->
            </div>
        </div>

        <div class="row" id="description-text">
            <div class="col-md-9 text">
                <?php the_field('prop_description');?>
            </div>
            <div class="col-md-3"><img class="img-responsive" src="<?php echo home_url('wp-content/uploads/2017/10/broker-tag.jpg'); ?>" alt=""></div>
        </div>

        <div class="row" id="prop-map">
            <div class="col-xs-12">
                <?php
                $location = get_field('prop_location');

                if( !empty($location) ):
                    ?>
                    <div class="acf-map">
                        <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>

                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid broker-contact">
    <div class="container">
    
    <?php  
    include 'content-broker_info.php';
    ?>
       
    </div>
    <?php


    $author_badge_address = get_user_meta('broker_office_address', 'user_'. $author_id );
    ?>
    <?php echo $author_badge_address; ?>




</div>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>


    <div class="entry-content">

        <?php the_content(); ?>
        <?php _tk_link_pages(); ?>
    </div><!-- .entry-content -->

    </div>


    <footer class="entry-meta">
        <?php
        /* translators: used between list items, there is a space after the comma */
        $category_list = get_the_category_list(__(', ', '_tk'));

        /* translators: used between list items, there is a space after the comma */
        $tag_list = get_the_tag_list('', __(', ', '_tk'));

        if (!_tk_categorized_blog()) {
            // This blog only has 1 category so we just need to worry about tags in the meta text
            if ('' != $tag_list) {
                $meta_text = __('This entry was tagged %2$s. Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink</a>.', '_tk');
            } else {
                $meta_text = __('Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink</a>.', '_tk');
            }

        } else {
            // But this blog has loads of categories so we should probably display them here
            if ('' != $tag_list) {
                $meta_text = __('This entry was posted in %1$s and tagged %2$s. Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink</a>.', '_tk');
            } else {
                $meta_text = __('This entry was posted in %1$s. Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink</a>.', '_tk');
            }

        } // end check for categories on this blog

        printf(
            $meta_text,
            $category_list,
            $tag_list,
            get_permalink(),
            the_title_attribute('echo=0')
        );
        ?>

        <?php edit_post_link(__('Edit', '_tk'), '<span class="edit-link">', '</span>'); ?>
    </footer><!-- .entry-meta -->
</article><!-- #post-## -->
</div>



<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBcO-JtW5PV91DJeHAn8Q0r4vrcJ7MWJug"></script>
<script type="text/javascript">
    (function($) {

        /*
         *  new_map
         *
         *  This function will render a Google Map onto the selected jQuery element
         *
         *  @type	function
         *  @date	8/11/2013
         *  @since	4.3.0
         *
         *  @param	$el (jQuery element)
         *  @return	n/a
         */

        function new_map( $el ) {

            // var
            var $markers = $el.find('.marker');


            // vars
            var args = {
                zoom		: 16,
                center		: new google.maps.LatLng(0, 0),
                mapTypeId	: google.maps.MapTypeId.ROADMAP
            };


            // create map
            var map = new google.maps.Map( $el[0], args);


            // add a markers reference
            map.markers = [];


            // add markers
            $markers.each(function(){

                add_marker( $(this), map );

            });


            // center map
            center_map( map );


            // return
            return map;

        }

        /*
         *  add_marker
         *
         *  This function will add a marker to the selected Google Map
         *
         *  @type	function
         *  @date	8/11/2013
         *  @since	4.3.0
         *
         *  @param	$marker (jQuery element)
         *  @param	map (Google Map object)
         *  @return	n/a
         */

        function add_marker( $marker, map ) {

            // var
            var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );

            // create marker
            var marker = new google.maps.Marker({
                position	: latlng,
                map			: map
            });

            // add to array
            map.markers.push( marker );

            // if marker contains HTML, add it to an infoWindow
            if( $marker.html() )
            {
                // create info window
                var infowindow = new google.maps.InfoWindow({
                    content		: $marker.html()
                });

                // show info window when marker is clicked
                google.maps.event.addListener(marker, 'click', function() {

                    infowindow.open( map, marker );

                });
            }

        }

        /*
         *  center_map
         *
         *  This function will center the map, showing all markers attached to this map
         *
         *  @type	function
         *  @date	8/11/2013
         *  @since	4.3.0
         *
         *  @param	map (Google Map object)
         *  @return	n/a
         */

        function center_map( map ) {

            // vars
            var bounds = new google.maps.LatLngBounds();

            // loop through all markers and create bounds
            $.each( map.markers, function( i, marker ){

                var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );

                bounds.extend( latlng );

            });

            // only 1 marker?
            if( map.markers.length == 1 )
            {
                // set center of map
                map.setCenter( bounds.getCenter() );
                map.setZoom( 16 );
            }
            else
            {
                // fit to bounds
                map.fitBounds( bounds );
            }

        }

        /*
         *  document ready
         *
         *  This function will render each map when the document is ready (page has loaded)
         *
         *  @type	function
         *  @date	8/11/2013
         *  @since	5.0.0
         *
         *  @param	n/a
         *  @return	n/a
         */
// global var
        var map = null;

        $(document).ready(function(){

            $('.acf-map').each(function(){

                // create map
                map = new_map( $(this) );

            });

        });

    })(jQuery);
</script>
