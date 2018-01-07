asdfasdf
<?php                     
/**
 * 
 * Template name: broker_prop_slider
 * @package _tk
 */

?>

<section class="slider property-slider">

<?php

$args32 = array(
'author'        =>  $broker_id, 
'post_type'     => 'property',
'orderby'       =>  'post_date',
'order'         =>  'ASC',
'posts_per_page' => -1 // no limit
);


$current_user_posts = get_posts( $args32 );
$total = count($current_user_posts);  

foreach ($current_user_posts as $key => $data) {
    $post_date = $data->post_date; 
  }

  echo $total;
  
?>

</section>
