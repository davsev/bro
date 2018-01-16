

<?php

/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package _tk
 */


get_header(); ?>


<div class="main-content">
    <?php // substitute the class "container-fluid" below if you want a wider content area ?>
    <div class="container-fluid">
        <!-- SECTION 1 CAROUSEL OR VIDEO -->
        <div class="row">
            <div id="slider" class="main-content-inner main-content-100 col-sm-12 col-md-12"
                 style="background-image: url('<?php echo home_url('wp-content/uploads/2017/09/broker-father-and-son.jpg'); ?>');">


                <div id="search-tabs">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                                  data-toggle="tab"><img
                                        src="<?php echo home_url('wp-content/uploads/2017/09/icon_08.png'); ?>"
                                        alt="חפש נכס">
                                חפש נכס</a></li>
                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><img
                                        src="<?php echo home_url('wp-content/uploads/2017/09/icon_06.png'); ?>"
                                        alt="חפש ברוקר">חפש
                                ברוקר</a></li>

                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <?php echo do_shortcode('[wd_asp id=2]'); ?>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile">
                        <?php echo do_shortcode('[wd_asp id=4]'); ?>
                        </div>
                    </div>
                </div> <!-- /#search-tabs --> 

                <div class="row three-tiles">
                <a href="<?php the_field('upper_front_cube_link_1', 'option'); ?>" class="slider-cube">
                   
                        <div class="cube-img-container">
                            <img src="<?php echo get_field('upper_front_cube_image_1', 'option')['url']; ?>" alt="<?php echo get_field('upper_front_cube_image_1', 'option')['alt']; ?>"
                                 class="slider-cube-img">
                        </div>
                       
                        <div class="cube-text">
                            <h3><?php the_field('upper_front_cube_title_1', 'option'); ?></h3>
                            <span>למידע נוסף>>></span>
                        </div>
                </a>
                <a href="<?php the_field('upper_front_cube_link_2', 'option'); ?>" class="slider-cube">
                
                     <div class="cube-img-container">
                         <img src="<?php echo get_field('upper_front_cube_image_2', 'option')['url']; ?>" alt="<?php echo get_field('upper_front_cube_image_2', 'option')['alt']; ?>"
                              class="slider-cube-img">
                     </div>
                    
                     <div class="cube-text">
                         <h3><?php the_field('upper_front_cube_title_2', 'option'); ?></h3>
                         <span>למידע נוסף>>></span>
                     </div>
             </a>
             <a href="<?php the_field('upper_front_cube_link_3', 'option'); ?>" class="slider-cube">
             
                  <div class="cube-img-container">
                      <img src="<?php echo get_field('upper_front_cube_image_3', 'option')['url']; ?>" alt="<?php echo get_field('upper_front_cube_image_3', 'option')['alt']; ?>"
                           class="slider-cube-img">
                  </div>
                 
                  <div class="cube-text">
                      <h3><?php the_field('upper_front_cube_title_3', 'option'); ?></h3>
                      <span>למידע נוסף>>></span>
                  </div>
          </a>
                </div>
            </div>
        </div>
        <div class="row" id="about-us">

            <div class="col-md-4 about-us">
                <h2><?php the_field('about_about_front', 'option'); ?></h2>
                <p>
                    <?php the_field('about_about_text', 'option'); ?>
                </p>
                <a class="read-more" href="<?php the_field('about_about_text_button', 'option'); ?>"><?php the_field('about_about_text_button', 'option'); ?></a>
            </div>
            <div class="col-md-8 cooking">
            </div>
        </div>
        <div class="row" id="find-a-prop">
            <div class="col-md-4 fast-search">
                <div class="fast-search-title h-center v-center">
                    <h2>חיפוש מהיר</h2>
                </div>
                <div id="fast-search-box">
                    <form class="search-slide" role="search" action="<?php echo home_url('/advanced-property-search/'); ?>" method="get" id="searchform-slider">
                        <div id="inner-fast-search">

                            <div class="form-group">
                                <label for="field_59ae96d970a06">ישוב</label>
                                <input class="form-control" type="text" name="field_59ae96d970a06" value="" placeholder="הזינו את שם הישוב">
                            </div>

                            <div class="form-group"> 
                                <label for="field_59ec7533be002">סוג הנכס</label>

                            <?php 
                                $field_key = "field_59ec7533be002";
                                $field = get_field_object($field_key);
                                
                                if( $field )
                                    {
                                        echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">כל סוגי הנכסים</option>';
                                            foreach( $field['choices'] as $k => $v )
                                            {
                                                echo '<option value="' . $k . '">' . $v . '</option>';
                                            }
                                        echo '</select>';
                                    }
                            ?>
                            </div>
                            
                            <div class="form-group">    
                                <label for="field_59ae9e2370a0b">מספר חדרים</label>
                                <?php 

                                    $field_key = "field_59ae9e2370a0b";
                                    $field = get_field_object($field_key);
                        
                                    if( $field )
                                        {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">כל החדרים</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                            ?>
                            
                            </div>
                            <?php

                            // echo min_meta_value();
                            // echo '<br />';
                            // echo max_meta_value();

                            ?>
                            <div>




                           
                                <section class="range-slider form-group">
                                    <span class="rangeValues"></span>
<?php
// $max_price = number_format(max_meta_value());
// $min_price = number_format(min_meta_value());
//$min_price = number_format(min_meta_value());
?>  
                                <div class="row">
                                    <div class="col-xs-12">
                                        <label for="amount">טווח מחירים בין:</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 text-right">
                                        <input type="text" id="amount" readonly style="min-width: 100%; border:0; color:#000; font-weight:bold; background-color: transparent;">
                                        <input type="hidden" name="min" id="min-prop" value="">
                                        <input type="hidden" name="max" id="max-prop" value="">
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-xs-12">
                                        <div id="slider-range" data-min="<?php echo min_meta_value(); ?>" data-max="<?php echo max_meta_value(); ?>" ></div>
                                    </div>
                                </div>
                                </section>

                            </div>
                        </div> <!-- / inner-fast-search --> 
                        <div id="form-buttons" class="flex">
                            <input type="submit" class="" name="front-side-prop-search" value=" חיפוש">
                            <a href="<?php site_url('/?s'); ?>">לצפיה במאגר הנכסים</a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-8 prop-slider">


                <h2><?php the_field('slider_prop', 'option'); ?></h2>

                <section class="slider property-slider">

                    <?php

                    /*
                    *  Loop through post objects (assuming this is a multi-select field) ( setup postdata )
                    *  Using this method, you can use all the normal WP functions as the $post object is temporarily initialized within the loop
                    *  Read more: http://codex.wordpress.org/Template_Tags/get_posts#Reset_after_Postlists_with_offset
                    */

                    $post_objects = get_field('front_prop_slider', 'option');

                    if( $post_objects ): ?>

                        <?php foreach( $post_objects as $post): // variable must be called $post (IMPORTANT) ?>
                            <div class="col-md-4 col-sm-6 col-sm-12 slider-single-cont">
                                <?php setup_postdata($post); ?>
                                <a href="<?php the_permalink(); ?>">
                                    <div class="slider-cont">
                                        <div class="slider-thumb" style="background-image:url('<?php the_post_thumbnail_url(); ?>')"></div>
                                        <div class="text-cont">
                                            <h3 class="thumb-slider-title"><?php the_title(); ?></h3>
                                            <p class="thumb-slider-city"><?php the_field('prop_city'); ?></p>
                                            <p class="thumb-slider-desc"><?php the_field('prop_description'); ?></p>

                                            <p class="thumb-slider-price"> <?php echo number_format(get_field('prop_price')); ?> ₪</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <?php endforeach; ?>

                        <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
                    <?php endif;



                    ?>
                </section>




            </div>

        </div>
        <div class="row" id="tool-box">
            <div class="col-xs-12 tool-content">
                <h2><?php the_field('tool_box_titlex', 'option'); ?></h2>
                <div class="icons">
                    <ul>
                        <li><a href="<?php the_field('tool_box_tool_box_1_link', 'option'); ?>">
                        <img class="animation-increease" src="<?php echo get_field('tool_box_tool_box_img_1', 'option')['url']; ?>" onmouseover="this.src='<?php echo site_url( 'wp-content/uploads/2017/12/icon-10.png' ); ?>'" onmouseout="this.src='<?php echo get_field('tool_box_tool_box_img_1', 'option')['url']; ?>'" alt="<?php echo get_field('tool_box_tool_box_img_1', 'option')['alt']; ?>">
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_1_line_1', 'option'); ?></span>
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_1_line_2', 'option'); ?></span>
                            </a>
                        </li>
                        <li><a href="<?php the_field('tool_box_tool_box_2_link', 'option'); ?>">
                        <img class="animation-increease" src="<?php echo get_field('tool_box_tool_box_img_2', 'option')['url']; ?>" onmouseover="this.src='<?php echo site_url( 'wp-content/uploads/2017/12/icon-09.png' ); ?>'" onmouseout="this.src='<?php echo get_field('tool_box_tool_box_img_2', 'option')['url']; ?>'" alt="<?php echo get_field('tool_box_tool_box_img_2', 'option')['alt']; ?>">
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_2_line_1', 'option'); ?></span>
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_2_line_2', 'option'); ?></span>
                            </a>
                        </li>
                        <li><a href="<?php the_field('tool_box_tool_box_3_link', 'option'); ?>">
                        <img class="animation-increease" src="<?php echo get_field('tool_box_tool_box_img_3', 'option')['url']; ?>"  onmouseover="this.src='<?php echo site_url( 'wp-content/uploads/2017/12/icon-08.png' ); ?>'" onmouseout="this.src='<?php echo get_field('tool_box_tool_box_img_3', 'option')['url']; ?>'" alt="<?php echo get_field('tool_box_tool_box_img_3', 'option')['alt']; ?>">
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_3_line_1', 'option'); ?></span>
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_3_line_2', 'option'); ?></span>
                            </a>
                        </li>
                        <li><a href="<?php the_field('tool_box_tool_box_4_link', 'option'); ?>">
                        <img class="animation-increease" src="<?php echo get_field('tool_box_tool_box_img_4', 'option')['url']; ?>" onmouseover="this.src='<?php echo site_url( 'wp-content/uploads/2017/12/icon-07.png' ); ?>'" onmouseout="this.src='<?php echo get_field('tool_box_tool_box_img_4', 'option')['url']; ?>'" alt="<?php echo get_field('tool_box_tool_box_img_4', 'option')['alt']; ?>">
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_4_line_1', 'option'); ?></span>
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_4_line_2', 'option'); ?></span>
                            </a>
                        </li>
                        <li><a href="<?php the_field('tool_box_tool_box_5_link', 'option'); ?>">
                        <img class="animation-increease" src="<?php echo get_field('tool_box_tool_box_img_5', 'option')['url']; ?>"  onmouseover="this.src='<?php echo site_url( 'wp-content/uploads/2017/12/icon-06.png' ); ?>'" onmouseout="this.src='<?php echo get_field('tool_box_tool_box_img_5', 'option')['url']; ?>'" alt="<?php echo get_field('tool_box_tool_box_img_5', 'option')['alt']; ?>">
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_5_line_1', 'option'); ?></span>
                                <span class="toolbox-icon-text"><?php the_field('tool_box_tool_box_5_line_2', 'option'); ?></span>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="row" id="testimonials">
            <div class="col-sm-6 col-sm-offset-right-3 col-xs-12">
                <div class="lazy-cont">
                    <h2><?php the_field('testimonials_title', 'option'); ?></h2>
                    <section class="slider lazy">
                        <?php if( have_rows('testimonials_customers', 'option') ): ?>



                            <?php while( have_rows('testimonials_customers', 'option') ): the_row();

                                // vars
                                $text = get_sub_field('text');
                                $name = get_sub_field('name');
                                $city = get_sub_field('city');

                                ?>

                                <div>

                                    <p class="testimonial-text">
                                        <img src="<?php echo home_url('wp-content/uploads/2017/09/geresh_03.png'); ?>"
                                             class="geresh-up" alt="">
                                        <?php echo $text; ?>

                                    </p>
                                    <h3><?php echo $name; ?></h3>
                                    <p class="testimonial-location"><?php echo $city; ?></p>
                                    <img src="<?php echo home_url('wp-content/uploads/2017/09/geresh_07.png'); ?>"
                                         class="geresh-down" alt="">
                                </div>

                            <?php endwhile; ?>



                        <?php endif; ?>


                    </section>
                </div>
                <div class="white-arrow">
                    <img src="<?php echo home_url('wp-content/uploads/2017/09/tri_06.png'); ?>"

                </div>
            </div>
        </div>

    </div>


    <div class="row" id="social">
        <div class="col-xs-12" id="social-inner">
            <h2><?php the_field('social_title', 'option'); ?></h2>
            <ul>
                <li>

                    <a href="<?php the_field('social_link1', 'option'); ?>">
                        <img class="animation-increease circle" src="<?php echo get_field('social_img1', 'option')['url']; ?>" onmouseover="this.src='<?php echo home_url('wp-content/uploads/2017/12/icon-14.png'); ?>'" onmouseout="this.src='<?php echo get_field('social_img1', 'option')['url']; ?>'" alt="<?php echo get_field('social_img1', 'option')['alt'] ?>">

                        <p class="social-title"><?php the_field('social_title1', 'option'); ?></p>
                    </a>
                </li>
                <li>
                    <a href="<?php the_field('social_link2', 'option'); ?>">
                    <img class="animation-increease circle" src="<?php echo get_field('social_img2', 'option')['url']; ?>" onmouseover="this.src='<?php echo home_url('wp-content/uploads/2017/12/icon-15.png'); ?>'" onmouseout="this.src='<?php echo get_field('social_img2', 'option')['url']; ?>'" alt="<?php echo get_field('social_img2', 'option')['alt'] ?>">
                    
                        <p class="social-title"><?php the_field('social_title2', 'option'); ?></p>
                    </a>
                </li>
                <li>
                    <a href="<?php the_field('social_link13', 'option'); ?>">
                    <img class="animation-increease circle" src="<?php echo get_field('social_img3', 'option')['url']; ?>" onmouseover="this.src='<?php echo home_url('wp-content/uploads/2017/12/icon-16.png'); ?>'" onmouseout="this.src='<?php echo get_field('social_img3', 'option')['url']; ?>'" alt="<?php echo get_field('social_img3', 'option')['alt'] ?>">
                    
                        <p class="social-title"><?php the_field('social_title3', 'option'); ?></p>
                    </a>
                </li>
            </ul>

        </div>
        <div class="col-xs-12 white"></div>
    </div>

    <div class="row" id="contact">
        <div class="col-lg-8 col-lg-offset-right-2 col-md-10 col-md-offset-right-1 col-sm-12" id="contact-data">
            <div class="col-md-8 form">
                <?php echo do_shortcode( ' [contact-form-7 id="93" title="טופס יצירת קשר דף ראשי"] '); ?>
            </div>

            <div class="col-md-4 address">
                <ul>
                    <li>
                        <img src="<?php echo home_url('wp-content/uploads/2017/09/contact-icon_13.png'); ?>" alt="">
                        <span class="text">טלפון רשת ברוקר</span>
                        <span class="text-bold ltr"><a  class="text-bold black" href="tel:<?php the_field('contact_us_broker_phone', 'option'); ?>"><?php the_field('contact_us_broker_phone', 'option'); ?></a></span>
                    </li>
                    <li>
                        <img src="<?php echo home_url('wp-content/uploads/2017/09/contact-icon_16.png'); ?>" alt="">
                        <span class="text">כתובת משרד ראשי</span>
                        <span class="text-bold"><?php the_field('contact_us_broker_address', 'option'); ?></span>
                    </li>

                    <li>
                        <img src="<?php echo home_url('wp-content/uploads/2017/09/contact-icon_18.png'); ?>" alt="">
                        <span class="text">שעות פעילות</span>
                        <span class="text-bold"><?php the_field('contact_us_broker_openning_hours', 'option'); ?></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- /SECTION 1 CAROUSEL OR VIDEO -->


    <?php get_footer(); ?>


