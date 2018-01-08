<?php

/**
 * Adds user profile fields 
 */


// add broker custom post type



function property_cpt_init() {
      $labels = array(
          'name' => 'נכס',
          'singular_name' => 'נכס',
          'add_new' => 'הוסף נכס חדש',
          'add_new_item' => 'הוסף נכס חדש',
          'edit_item' => 'ערוך נכס',
          'new_item' => 'ברוקר נכס',
          'all_items' => 'כל הנכסים',
          'view_item' => 'הצג נכס',
          'search_items' => 'חפש נכס',
          'not_found' =>  'לא נמצא נכס',
          'not_found_in_trash' => 'לא נמצא נכס בפח', 
          'parent_item_colon' => '',
          'menu_name' => 'נכס',
          );
 
      $args = array(
          'labels' => $labels,
          'exclude_from_search' => false,
          'public' => true,
          'publicly_queryable' => true,
          'show_ui' => true, 
          'show_in_menu' => true, 
          'query_var' => true,
          'rewrite' => array( 'slug' => 'property' ),
          'capability_type' => 'post',
          'has_archive' => true, 
          'hierarchical' => false,
         // 'taxonomies' => array('speciality'),
          'menu_position' => null,
          'supports' => array( 'title', 'thumbnail', 'excerpt', 'editor' )
          ); 
 
        register_post_type( 'property', $args );
    }
add_action( 'init', 'property_cpt_init');



/**
 * main menu
 */

//require_once  '../includes/wp-bootstrap-navwalker-master/wp-bootstrap-navwalker.php';


function broker_scripts() {

  // Import the necessary TK Bootstrap WP CSS additions
  wp_enqueue_style( 'slick-theme', get_stylesheet_directory_uri() . '/includes/slick/slick-theme.css' );
  wp_enqueue_style( 'slick', get_stylesheet_directory_uri() . '/includes/slick/slick.css' );
//rtl boot
  wp_enqueue_style( 'boot-rtl', get_stylesheet_directory_uri() . '/includes/css/boot-rtl.css' );  
//jquery ui css
  wp_enqueue_style( 'jquery-ui', get_stylesheet_directory_uri() . '/includes/jquery-ui/jquery-ui.min.css' );
  wp_enqueue_style( 'lightbox2-master', get_stylesheet_directory_uri() . '/includes/lightbox2/lightbox2-master/dist/css/lightbox.css' );
  wp_enqueue_style( 'broker-child', get_stylesheet_directory_uri() . '/assets/dist/css/broker.css' );
  

 // wp_enqueue_script( 'jquery', get_stylesheet_directory_uri() . '/includes/jquery/jquery-3.2.1.min', null,  3.2, true);
  wp_enqueue_script( 'slick-js', get_stylesheet_directory_uri() . '/includes/slick/slick.js', array ( 'jquery' ), 1.1, true);
  wp_enqueue_script( 'jquery-ui', get_stylesheet_directory_uri() . '/includes/jquery-ui/jquery-ui.js', array ( 'jquery' ), 1.7, true);
  wp_enqueue_script( 'lightbox2-master', get_stylesheet_directory_uri() . '/includes/lightbox2/lightbox2-master/dist/js/lightbox.js', array ( 'jquery' ), 1.6, true);
  wp_enqueue_script( 'main-js', get_stylesheet_directory_uri() . '/assets/dist/js/main.js', array ( 'jquery' ), 1, true);


}

add_action( 'wp_enqueue_scripts', 'broker_scripts', 30  );





function broker_prefix_setup() {
  
  add_theme_support( 'custom-logo', array(
    'height'      => 140,
    'width'       => 104,
    'flex-width' => true,
  ) );

}
add_action( 'after_setup_theme', 'broker_prefix_setup' );


/*Google map api*/
function my_acf_init() {

acf_update_setting('google_api_key', 'AIzaSyBcO-JtW5PV91DJeHAn8Q0r4vrcJ7MWJug');
}

add_action('acf/init', 'my_acf_init');


/*options page*/


if( function_exists('acf_add_options_page') ) {
  
  acf_add_options_page(array(
    'page_title'  =>  __('Theme General Settings', '_tk'),
    'menu_title'  => __('Theme Settings', '_tk'),
    'menu_slug'   => 'theme-general-settings',
    'redirect'    => false
  ));
  
  // acf_add_options_sub_page(array(
  //   'page_title'  => 'Theme Header Settings',
  //   'menu_title'  => 'Header',
  //   'parent_slug' => 'theme-general-settings',
  // ));

}


/*single property page*/

/*add css class to avatar*/
add_filter('get_avatar','add_gravatar_class');

function add_gravatar_class($class) {
    $class = str_replace("class='avatar", "class='avatar broker-avatar", $class);
    return $class;
}




/*
Allow users to view ther own uploaded files
*/


add_action('pre_get_posts','users_own_attachments');
function users_own_attachments( $wp_query_obj ) {

    global $current_user, $pagenow;

    $is_attachment_request = ($wp_query_obj->get('post_type')=='attachment');

    if( !$is_attachment_request )
        return;

    if( !is_a( $current_user, 'WP_User') )
        return;

    if( !in_array( $pagenow, array( 'upload.php', 'admin-ajax.php' ) ) )
        return;

    if( !current_user_can('delete_pages') )
        $wp_query_obj->set('author', $current_user->ID );

    return;
}



/**
 * Get the author's email address from the author meta infos.
 * Sends mail to admin and broker from property page
 */

function custom_get_post_author_email($atts){
    $value = '';
    if(get_the_author_meta( 'user_email' )) {
        $value = get_the_author_meta( 'user_email' );
    }
    return $value;
}
add_shortcode('CUSTOM_POST_AUTHOR_EMAIL', 'custom_get_post_author_email');

/*
 *search prop
 */ 

/**
* Enqueue scripts and styles.
*
* @since 1.0.0
*/
function ja_global_enqueues() {
 wp_enqueue_style(
   'jquery-auto-complete',
   'https://cdnjs.cloudflare.com/ajax/libs/jquery-autocomplete/1.0.7/jquery.auto-complete.css',
   array(),
   '1.0.7'
 );
 wp_enqueue_script(
   'jquery-auto-complete',
   'https://cdnjs.cloudflare.com/ajax/libs/jquery-autocomplete/1.0.7/jquery.auto-complete.min.js',
   array( 'jquery' ),
   '1.0.7',
   true
 );
//  wp_enqueue_script(
//    'global',
//    get_stylesheet_directory_uri() . '/js/src/global.min.js',
//    array( 'jquery' ),
//    '1.0.0',
//    true
//  );
 wp_localize_script(
   'global',
   'global',
   array(
     'ajax' => admin_url( 'admin-ajax.php' ),
   )
 );
}
add_action( 'wp_enqueue_scripts', 'ja_global_enqueues' );
/**
* Live autocomplete search feature.
*
* @since 1.0.0
*/
function ja_ajax_search() {
 $results = new WP_Query( array(
   'post_type'     => 'property',
   'meta_key'    => 'prop_city',
   'post_status'   => 'publish',
   'nopaging'      => true,
   'posts_per_page'=> 100,
   's'             => stripslashes( $_POST['search'] ),
 ) );
 $items = array();
 if ( !empty( $results->posts ) ) {
   foreach ( $results->posts as $result ) {
     $items[] = $result->post_title;
   }
 }
 wp_send_json_success( $items );
}
add_action( 'wp_ajax_search_site',        'ja_ajax_search' );
add_action( 'wp_ajax_nopriv_search_site', 'ja_ajax_search' );

 

/*
Auto complete end
*/ 




/*Add footer widget area*/ 
function broker_footer_widgets_init() {

    register_sidebar( array(
        'name'          => 'Footer 1',
        'id'            => 'footer-1',
        'description'   => __( 'תוכן זה יוצג בפוטר בעמודה הראשונה מימין', 'textdomain' ),
        'before_widget' => '<div id="%1$s" class="omc-footer-widget %2$s">',    
        'after_widget' => '</div>', 
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>',
    ) );
}
      register_sidebar(array( 
        'name' => 'Footer 2',
        'id' => 'footer-2', // I also added the ID but doesn't work 
        'description'   => __( 'תוכן זה יוצג בפוטר בעמודה השנייה מימין', 'textdomain' ),        
        'before_widget' => '<div id="%1$s" class="omc-footer-widget %2$s">',    
        'after_widget' => '</div>', 
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>',
      ));

      register_sidebar(array( 
        'name' => 'Footer 3',
        'id' => 'footer-3', // I also added the ID but doesn't work 
        'description'   => __( 'תוכן זה יוצג בפוטר בעמודה שלישית מימין', 'textdomain' ),        
        'before_widget' => '<div id="%1$s" class="omc-footer-widget %2$s">',    
        'after_widget' => '</div>', 
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>',
      ));

      register_sidebar(array( 
        'name' => 'Footer 4',
        'id' => 'footer-4', // I also added the ID but doesn't work 
        'description'   => __( 'תוכן זה יוצג בפוטר בעמודה הרביעית מימין', 'textdomain' ),        
        'before_widget' => '<div id="%1$s" class="omc-footer-widget %2$s">',    
        'after_widget' => '</div>', 
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>',
      ));

      register_sidebar(array( 
        'name' => 'Footer 5',
        'id' => 'footer-5', // I also added the ID but doesn't work 
        'description'   => __( 'תוכן זה יוצג בפוטר בעמודה השמאלית ביותר', 'textdomain' ),        
        'before_widget' => '<div id="%1$s" class="omc-footer-widget %2$s">',    
        'after_widget' => '</div>', 
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>',
      ));




  register_sidebar(array( 
    'name' => 'profile-sidebar',
    'id' => 'profile-sidebar', // I also added the ID but doesn't work 
    'description'   => __( 'תוכן זה יוצג בפוטר בעמודה השמאלית ביותר', 'broker' ),        
    'before_widget' => '<div id="%1$s" class="omc-footer-widget %2$s">',    
    'after_widget' => '</div>', 
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

add_action( 'widgets_init', 'broker_footer_widgets_init' );
  
  /* Tags css custisation*/
  function broker_tags() { 
    $wpbtags = the_terms( 
      $post->ID,
       'tags',
        '<span class="taglink tagbox"><i class="fa fa-plus-circle "></i>',
        '</span><span class="taglink tagbox"><i class="fa fa-plus-circle "></i>',
        '</span>'
       );     
    } 
  add_shortcode('wpbtags' , 'broker_tags' ); 


  //Get the highrst poperty price for front page search box
function max_meta_value(){
  global $wpdb;
    //$query = "SELECT max(meta_value) FROM wp_postmeta WHERE meta_key='prop_price' ORDER BY LENGTH(meta_key), meta_key";
    $max_query = new WP_Query( array( 'post_type' => 'property', 'post_status' => 'publish', 
    'orderby'=>'meta_value_num', 'order'=>'DESC','meta_key'=>'prop_price','posts_per_page'=>1) );
    //return $min_query;
  
    $max_val =  $max_query->posts[0];
    $max_id = the_field('prop_price', $max_val->ID);
    return $max_id;
}

 //Get the lowest poperty price for front page search box
function min_meta_value(){
  global $wpdb;
  // $query = "SELECT min(meta_value) FROM wp_postmeta WHERE meta_key='prop_price'";

  $min_query = new WP_Query( array( 'post_type' => 'property', 'post_status' => 'publish', 
  'orderby'=>'meta_value_num', 'order'=>'asc','meta_key'=>'prop_price','posts_per_page'=>1) );
  //return $min_query;

  $min_val =  $min_query->posts[0];
  $min_id = the_field('prop_price', $min_val->ID);
    return $min_id;
}

 //Get the lowest poperty price for front page search box
 function min_rooms_meta_value(){
    global $wpdb;
    $query = "SELECT min(meta_value) FROM wp_postmeta WHERE meta_key='prop_rooms'";
    $the_min = $wpdb->get_var($query);
    return $the_min_rooms;
  }

  //Get the highrst poperty price for front page search box
  function max_rooms_meta_value(){
    global $wpdb;
    $query = "SELECT max(meta_value) FROM wp_postmeta WHERE meta_key='prop_rooms'";
    $the_max = $wpdb->get_var($query);
    return $the_max_rooms;
}


  




/*acf select function
* 
*/
function select($fid, $name, $var_name){
    //$field_key = "field_59f2dfc922689";
   // $selected = $_GET[];
    $field = get_field_object($fid);
    
    if( $field ) {
      
        echo '<select class="form-control" name="' . $field['key'] . '">';

        echo '<option value="">' . $name . '</option>';
            
            foreach( $field['choices'] as $k => $v )
            {
                if($k == $_GET[$fid] ||$k == $var_name){
                    echo '<option selected value="' . $k . '">' . $v . '</option>';
                }else{
                    echo '<option value="' . $k . '">' . $v . '</option>';
                }
            }
        echo '</select>';
    }
}


/*Select search options for m*/

function search_select($fid, $name, $fieldname, $value){
    $field = get_field_object($fid);
    
    if( $field ) {
        echo '<select class="form-control" name="'.$fieldname.'">';
        echo '<option value="'.$value.'" selected> '.$name.' </option>';
            foreach( $field['choices'] as $k => $v )
            {
              if ($_GET[$fieldname] == '') {
                echo '<option value="'.$value.'" selected> '.$name.' </option>';
              } elseif ($_GET[$fieldname] == $k){
                echo '<option selected value="' . $k . '">' . $v . '</option>';
              } else {
                  echo '<option value="' . $k . '">' . $v . '</option>';
              }
            }
        echo '</select>';
    }    
}



function json_select($fid, $var_name){
  //$field_key = "field_59f2dfc922689";
 // $selected = $_GET[];
 //echo '<script>';
  $field = get_field_object($fid);
  
  if( $field ) {
      
        foreach( $field['choices'] as $k => $v )
          {
            echo addslashes($k) . ',';
          }
        }
        echo ';';
        //echo '</script>';
      };



function current_url(){
  global $wp;
  echo home_url( $wp->request );
}


$terms = get_terms( array(
  'taxonomy' => 'category',
  'hide_empty' => false,
) );



/**
 * add values to post edit.php
 * added from inner cpt
 */

//  //GET FEATURED IMAGE
// function get_prop_data_by_id($post_ID) {
//   $area = the_field('prop_area', $post_ID);
//   if ($area) {
//       //return $area;
//   }
// }

                        //פונקציה זו מחזירה את ה ןג של הפוסט    
// function add_new_cullomns_to_property($defaults) {
//   $defaults['prop_area'] = 'אזור';
//   return $defaults;
// }

// // SHOW THE FEATURED IMAGE
// function show_cullomns_to_property($column_name, $post_ID) {
//   if ($column_name == 'prop_area') {
//       $post_featured_image = add_new_cullomns_to_property($post_ID);
//       // if ($post_featured_image) {
//       //    // echo $post_featured_image;
//       // }
//   }
// }

// add_filter('manage_posts_columns', 'add_new_cullomns_to_property');
// add_action('manage_posts_custom_column', 'show_cullomns_to_property', 10, 2);

add_filter('manage_property_posts_columns', 'custom_posts_table_head');
add_action( 'manage_property_posts_custom_columns', 'custom_property_column', 10, 2);

function custom_posts_table_head( $columns ) {
  
      $columns['prop_area']  = 'אזור';
      $columns['prop_city']  = 'עיר';
      $columns['prop_price']  = 'מחיר';
      $columns['prop_rooms']  = 'מספר חדרים';
      return $columns;
  
  }
  


  
  function custom_property_column( $column, $post_ID ) {
   
      if( $column = 'prop_area' ) {
        $area = the_field('prop_area', $post_ID);
        if ($area) {
            return $area;
        }
       echo  $post_ID;
      }
    
  }


  /**
   * pagination
   */
  /*Loop Pagination - A WordPress script for creating paginated links on archive-type pages.*/

function loop_pagination( $args = array() ) {
  global $wp_rewrite, $wp_query;
  
  /* If there's not more than one page, return nothing. */
  if ( 1 >= $wp_query->max_num_pages )
      return;
  
  /* Get the current page. */
  $current = ( get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1 );
  
  /* Get the max number of pages. */
  $max_num_pages = intval( $wp_query->max_num_pages );
  
  /* Get the pagination base. */
  $pagination_base = $wp_rewrite->pagination_base;
  
  /* Set up some default arguments for the paginate_links() function. */
  $defaults = array(
      'base'         => add_query_arg( 'paged', '%#%' ),
      'format'       => '',
      'total'        => $max_num_pages,
      'current'      => $current,
      'prev_next'    => true,
      //'prev_text'  => __( '&laquo; Previous' ), // This is the WordPress default.
      //'next_text'  => __( 'Next &raquo;' ), // This is the WordPress default.
      'show_all'     => false,
      'end_size'     => 1,
      'mid_size'     => 1,
      'add_fragment' => '',
      'type'         => 'plain',
  
      // Begin loop_pagination() arguments.
      'before'       => '<nav class="pagination loop-pagination">',
      'after'        => '</nav>',
      'echo'         => true,
  );
  
  /* Add the $base argument to the array if the user is using permalinks. */
  if ( $wp_rewrite->using_permalinks() && !is_search() )
      $defaults['base'] = user_trailingslashit( trailingslashit( get_pagenum_link() ) . "{$pagination_base}/%#%" );
  
  /* Allow developers to overwrite the arguments with a filter. */
  $args = apply_filters( 'loop_pagination_args', $args );
  
  /* Merge the arguments input with the defaults. */
  $args = wp_parse_args( $args, $defaults );
  
  /* Don't allow the user to set this to an array. */
  if ( 'array' == $args['type'] )
      $args['type'] = 'plain';
  
  /* Get the paginated links. */
  $page_links = paginate_links( $args );
  
  /* Remove 'page/1' from the entire output since it's not needed. */
  $page_links = preg_replace( 
      array( 
          "#(href=['\"].*?){$pagination_base}/1(['\"])#",  // 'page/1'
          "#(href=['\"].*?){$pagination_base}/1/(['\"])#", // 'page/1/'
          "#(href=['\"].*?)\?paged=1(['\"])#",             // '?paged=1'
          "#(href=['\"].*?)&\#038;paged=1(['\"])#"         // '&#038;paged=1'
      ), 
      '$1$2', 
      $page_links 
  );
  
  /* Wrap the paginated links with the $before and $after elements. */
  $page_links = $args['before'] . $page_links . $args['after'];
  
  /* Allow devs to completely overwrite the output. */
  $page_links = apply_filters( 'loop_pagination', $page_links );
  
  /* Return the paginated links for use in themes. */
  if ( $args['echo'] )
      echo $page_links;
  else
      return $page_links;
   }


   
   /**
    * update user status
    */

    add_action( 'profile_update', 'my_profile_update', 10, 2 );
    
        function my_profile_update( $user_id, $old_user_data ) {
            echo $user_id;
            echo 'user david update';
            var_dump($old_user_data);
        }


// /** Step 2 (from text above). */
// add_action( 'admin_menu', 'my_plugin_menu' );

// /** Step 1. */
// function my_plugin_menu() {
//   //add_options_page( 'My Plugin Options', 'My Plugin', 'users', 'my-unique-identifier', 'my_plugin_users' );
//   add_submenu_page( 'users.php', 'משתמשים מושהים', 'משתמשים מושהים', 'manage_options', 'postponed-users', 'my_plugin_users');
// }

// /** Step 3. */
// function my_plugin_user() {
//   if ( !current_user_can( 'manage_options' ) )  {
//     wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
//   }
//   echo '<div class="wrap">';
//   echo '<p>Here is where the form would go if I actually had options.</p>';
//   echo '</div>';
// }



/**
 *  w3-dev ban user cpt line 668
 */
function ban_user( $user_id, $message="%%reason%%", $date = 'Indefinent', $ban_duration = false) {
  
          // if not in admin then return false
          // --
          if ($this->is_admin == false) { return false; }
          
          $default_settings           = $this->default_options('settings');
          $default_user_notification  = $this->default_options('user_notification');
  
          $settings = get_option('w3dev_ban_user_options', $default_settings);
  
          if (!empty($settings['change_posts_status'])) {
              if (!empty($settings['post_status'])) {
                  $args = array('author' => $user_id,  'post_type' => 'property');
                  $user_posts = get_posts( $args );
                  if (!empty($user_posts)) {
                      foreach ($user_posts as $a_post) {
                          $post = array( 'ID' => $a_post->ID, 'post_status' => $settings['post_status'] );
                          wp_update_post($post);
                      }
                  }
              }
          }
  
          // here we check to see if a ban duration has been selected
          // and if so then we set the date accordingly
          // --
          if (!empty($ban_duration)) {
  
              $now = date("Y-m-d H:i:s");
  
              switch ($ban_duration) {
                  case 'indefinately':
                      $date = null;
                      break;
  
                  case '1 day':
                      $date = date('Y-m-d H:i:s', strtotime($now . ' +1 day'));
                      break;
  
                  case '1 week':
                      $date = date('Y-m-d H:i:s', strtotime($now . ' +1 week'));
                      break;
  
                  case '2 weeks':
                      $date = date('Y-m-d H:i:s', strtotime($now . ' +2 weeks'));
                      break;
  
                  case '1 month':
                      $date = date('Y-m-d H:i:s', strtotime($now . ' +1 month'));
                      break;
  
                  case 'date picker':
                      $date = $date;
                      break;
                                  
                  default:
                      $date = null;
                      break;
              }
  
          }
          
          // Remove previous unban (if any)
          // Set new unban schedule (if defined)
          // --
          wp_unschedule_event(  wp_next_scheduled('w3dev_unban_user', array( intval($user_id) )), 'w3dev_unban_user', array( intval($user_id) ));
          if ($date != null) {
              if ( $settings[date_format] == "m-d-Y") $date = str_replace('-', '/', $date); // Converts to be assumed as American.
              wp_schedule_single_event( strtotime($date), 'w3dev_unban_user', array( intval($user_id)) );
          }
  
  
          // Update status
          //
          if ( ! $this->is_user_banned( $user_id ) ) {
  
              global $wpdb;
  
              // set the user to banned
              // --
              update_user_option( $user_id, 'w3dev_user_banned', TRUE, FALSE );
              update_user_option( $user_id, 'w3dev_user_banned_date', date('d-m-Y'), FALSE );
  
              // if ban reason (passed as paramater = message)
              // has been supplied then store with the userdata.
              // --
              if (!empty($message)) {
                  $message = strip_tags($message);
                  update_user_option( $user_id, 'w3dev_user_banned_reason', $message, FALSE );
                  
              } elseif (!empty($settings['ban_email_default_message'])) {
                  
                  // Store the message as a variable for manipulation
                  // Find if tags exist to be modified
                  // --
                  $body = $settings['ban_email_default_message'];
                  $find_reason_tag            = strpos( $body, '%%reason%%' );
                  $find_unban_date_tag        = strpos( $body, '%%unban_date%%' );
  
                  // Determine if the message sent as a parameter is empty
                  // Replaces the empty message with a generic one
                  // --
                  if ( empty($message) ) { $message = $settings['ban_email_default_message']; }
                  if ( $find_reason_tag !== false ) { $body = str_replace('%%reason%%', $message, $body); }
                  if ( $find_unban_date_tag !== false ) { $body = str_replace('%%unban_date%%', (!empty($date) ? date($settings['date_format'], strtotime($date)) : $ban_user_email_notification['unban_indefinite_date_tag']), $body); }
  
                  update_user_option( $user_id, 'w3dev_user_banned_reason', $body, FALSE );
              }
  
              // email should be sent
              // -- 
              if ( $settings['ban_email'] ) {
  
                  // let's grab the users email address from the db
                  // and pass it through php filter to sanitise it
                  // --
                  $user_info  = get_userdata($user_id);
                  $user_email = $user_info->user_email;
                  $user_email = filter_var($user_email, FILTER_SANITIZE_EMAIL);
          
                  if (!empty($user_email)) {
          
                      // let's get the plugin template options
                      // --
                      $email_templates = get_option('w3dev_ban_user_email_templates', $default_user_notification);
  
                      // next we need to get the template and replace the reason tag 
                      // %%reason%% with the text provided in the options or popup window
                      // --
                      $ban_user_email_notification        = $email_templates['user_notification'];
                      $subject_title                      = !empty( $ban_user_email_notification['subject_title'] ) ? $ban_user_email_notification['subject_title'] : $default_user_notification['user_notification']['subject_title'];
                      $body                               = !empty( $ban_user_email_notification['body'] ) ? $ban_user_email_notification['body'] : $default_user_notification['user_notification']['body'];
                      $find_reason_tag                    = strpos( $body, '%%reason%%' );
                      $find_unban_date_tag                = strpos( $body, '%%unban_date%%' );
          
                      // Determine if the message sent as a parameter is empty
                      // Replaces the empty message with a generic one
                      // --
                      if ( empty($message) ) { $message = $settings['ban_email_default_message']; }
                      if ( $find_reason_tag !== false ) { $body = str_replace('%%reason%%', $message, $body); }
                      if ( $find_unban_date_tag !== false ) { $body = str_replace('%%unban_date%%', (!empty($date) ? date($settings['date_format'], strtotime($date)) : $ban_user_email_notification['unban_indefinite_date_tag']), $body); }
  
                      $user = get_user_by( 'ID', $user_id );
                      if (!empty($user)) {
                          $body = str_replace('%%username%%', $user->user_login, $body);
                          $body = str_replace('%%first_name%%', $user->first_name, $body);
                          $body = str_replace('%%last_name%%', $user->last_name, $body);
                      }
          
                      // define headers
                      // --
                      $headers = array();
                      $headers[] = "Content-Type: text/html; charset=utf-8\r\n";
  
                      // include bcc and cc if applicable
                      // --
                      if (!empty($ban_user_email_notification['ban_cc_field'])) { $headers[] = 'Cc: '.$ban_user_email_notification['ban_cc_field']; }
                      if (!empty($ban_user_email_notification['ban_bcc_field'])) { $headers[] = 'Bcc: '.$ban_user_email_notification['ban_bcc_field']; }
  
                      // finally, a quick check to ensure the email is valid
                      // before sending using wp_mail
                      // --
                      if (!filter_var($user_email, FILTER_VALIDATE_EMAIL) === false) {
                          wp_mail( $user_email, $subject_title, $body, $headers );            
                      }
  
                  }
  
              }
  
          }
      }
  
/**
 * /  w3-dev ban user cpt line 668
 */