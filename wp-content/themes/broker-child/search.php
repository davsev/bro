<?php
/**
 * The template for displaying Search Results pages.
 *
 * @package _tk
 */



$area = $_GET['field_59f2dfc922689'];  //prop_area
$city = $_GET['field_59ae96d970a06'];  //prop_city
$type = $_GET['field_59ec7533be002'];  //prop_type
$sale_rent = $_GET['']; //will be added in the future
$freetext = $_GET['s']; //free text
$store = $_GET['field_59ae9dac70a0a']; //prop_store
$ptice = $_GET['field_59aeaee651fac']; //prop_price
$rooms = $_GET['field_59ae9e2370a0b'];
$fromrooms = $_GET['fromrooms'];
$torooms = $_GET['torooms'];
$fromfloor = $_GET['fromfloor'];
$tofloor = $_GET['tofloor'];
$min = $_GET['min'];
$max = $_GET['max'];
$from_size = $_GET['from_size'];
$to_size = $_GET['to_size'];






if($area == ''){
    $area_val = '!=';
}else{
    $area_val = '=';
};

if($city == ''){
    $city_val = '!=';
}else{
    $city_val = '=';
};

if($type == 'כל סוגי הנכסים' || $type == '' ){
    $type_val = '!=';
}else{
    $type_val = '=';
};

if($rooms == 'כל החדרים' || $rooms == '' ){
    $rooms_val = '!=';
}else{
    $rooms_val = '=';
};


if($min == '' ) {
    $min = 0;
}

if($max == '') {
    $max = 1;
    $equal = 'NOT BETWEEN';
}else{
    $equal = 'BETWEEN';
}

if($fromrooms == '' ||$fromrooms == 0 ) {
    $fromrooms = 1;
}

if($torooms == '' || $torooms == 0 ) {
    $torooms = 1000;
}


if($fromfloor == '' ) {
    $fromfloor = -4;
}

if($tofloor == '' || $tofloor == '21'  ) {
    $tofloor = 1000;
}

if($from_size == ''){
    $from_size = 0;
}

if($to_size == ''){
    $to_size = 10000;
}



/*חיפוש שמתבצע על ידי טופס חיפוש נכס בדף הראשי בחלק העליון*/ 
if (isset($_GET['front-prop-search'])){
    $args = array(
            'posts_per_page' => -1,
            'post_type'		=> 'property',
            'meta_key'		=> 'prop_city',
            'meta_value'	=> $city,
    );
    echo 'front-prop-search';
};

/*חיפוש שמתבצע בדף הראשי באצי צד ימין*/ 
if (isset($_GET['front-side-prop-search'])){
    
    $args = array(
        'posts_per_page' => -1,
        'post_type'     => 'property',
        'meta_query'    =>  array(
            'relation '     => 'AND',
            array(
                'key'       => 'prop_city',
                'value' => $city,
                'compare'       => 'LIKE',
            ),
            array(
                'key'       => 'prop_type',
                'value' => $type,
                'compare'       => 'LIKE',
            ),
            array(
                'key'       => 'prop_rooms',
                'value' => $rooms,
                'compare'       => $rooms_val,
            ),
            array(
                'key'     => 'prop_price',
                'value'   => array( $_GET['min'], $_GET['max'] ),
                'type'    => 'numeric',
                'compare' => $equal,
            ),
        ),
    );
};

/*חיפוש שמתבצע בדףהחיפוש תחת לשונית חיפוש רגיל*/
if (isset($_GET['reg-prop-search-form'])){
    $paged = ( get_query_var( 'paged' ) ) ? absint( get_query_var( 'paged' ) ) : 1;

    
    $args = array(
        'posts_per_page' => 9,
        's' => $_GET['s'],
        'post_type'		 => 'property',
        'paged' => $paged,
        'meta_query'     =>  array(
            'relation '  => 'AND',
            array(
                'key'		=> 'prop_area',
                'value'	    => $area,
                'compare'   => $area_val,
            ),
            array(
                'key'		=> 'prop_city',
                'value'	    => $city,
                'compare'   => $city_val,
            ),
            array(
                'key'		=> 'prop_type',
                'value'	    => $type,
                'compare'   => $type_val,
            ),
            array(
                'key'     => 'prop_rooms',
                'value'   => array( $fromrooms, $torooms ),
                'type'    => 'numeric',
                'compare' => 'BETWEEN',
            ),
            array(
                'key'     => 'prop_store',
                'value'   => array( $fromfloor, $tofloor ),
                'type'    => 'numeric',
                'compare' => 'BETWEEN',
            ),
            array(
                'key'     => 'prop_price',
                'value'   => array( $min, $max ),
                'type'    => 'numeric',
                'compare' => $equal,
            ),
        ),
    );  
};

if (isset($_GET['adv-prop-search-form'])){

    // $prop_tech = get_field('prop_tech');
    // $mirpeset = $prop_tech && in_array('מרפסת', $prop_tech);
    // if($mirpeset){
    //     $args['meta_query'] = array(
    //         'key'		=> 'prop_tech',
    //         'value'	    => $mirpeset,
    //         'compare'   => 'like',
    //     ),
    // };

        $args = array(
            'posts_per_page' => 12,
            's' => $_GET['s'],
            'post_type'		 => 'property',
            'paged' => $paged,
            'meta_query'     =>  array(
                'relation '  => 'AND',
                array(
                    'key'		=> 'prop_area',
                    'value'	    => $area,
                    'compare'   => $area_val,
                ),
                array(
                    'key'		=> 'prop_city',
                    'value'	    => $city,
                    'compare'   => $city_val,
                ),
                array(
                    'key'		=> 'prop_type',
                    'value'	    => $type,
                    'compare'   => $type_val,
                ),
                array(
                    'key'     => 'prop_rooms',
                    'value'   => array( $fromrooms, $torooms ),
                    'type'    => 'numeric',
                    'compare' => 'BETWEEN',
                ),
                array(
                    'key'     => 'prop_store',
                    'value'   => array( $fromfloor, $tofloor ),
                    'type'    => 'numeric',
                    'compare' => 'BETWEEN',
                ),
                array(
                    'key'     => 'prop_price',
                    'value'   => array( $min, $max ),
                    'type'    => 'numeric',
                    'compare' => $equal,
                ),
                array(
                    'key'     => 'prop_size',
                    'value'   => array( $from_size,  $to_size ),
                    'type'    => 'numeric',
                    'compare' => 'BETWEEN',
                ),
            ),
        );  
    };





$the_query = new WP_Query( $args );
$result_count = $the_query->found_posts;

?>
<!-- <pre>
    <?php 
        //var_dump($args);
    ?>
</pre> -->


<?php get_header(); ?>


<div id="prop-search" class="container">
<div class="row" id="prop-search-form">
<div class="col-xs-12">
    <!-- tabs -->


            <!-- Tab panes -->
            <?php if($_GET['adv-prop-search-form']) : ?>
            <div id="the-tabs">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs rtl" role="tablist" id="prop-search-tabs">
                <li role="presentation">
                    <a href="#reg-prop-search" aria-controls="reg-prop-search" role="tab" data-toggle="tab">
                       חיפוש רגיל
                    </a>
                </li>
                <li role="presentation"  class="active">
                    <a href="#adv-prop-search" aria-controls="adv-prop-search" role="tab" data-toggle="tab">
                        חיפוש מתקדם
                    </a>
                </li>
            </ul>


            <div id="prop-tab-searchform" class="tab-content  ">
                <div role="tabpanel" class="tab-pane " id="reg-prop-search">
                 
                   <?php get_template_part( 'content', 'reg_prop_search_form' ); ?>
                
                </div>
                <div role="tabpanel" class="tab-pane active" id="adv-prop-search">
                
                    <?php get_template_part( 'content', 'adv_prop_search_form' ); ?>
                    
                </div>
             </div> <!-- /tabs -->
             <?php else : ?>

             <div id="the-tabs">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs rtl" role="tablist" id="prop-search-tabs">
                <li role="presentation" class="active">
                    <a href="#reg-prop-search" aria-controls="reg-prop-search" role="tab" data-toggle="tab">
                       חיפוש רגיל
                    </a>
                </li>
                <li role="presentation" >
                    <a href="#adv-prop-search" aria-controls="adv-prop-search" role="tab" data-toggle="tab">
                        חיפוש מתקדם
                    </a>
                </li>
            </ul>


             <div id="prop-tab-searchform" class="tab-content  ">
                <div role="tabpanel" class="tab-pane active" id="reg-prop-search">
                 
                   <?php get_template_part( 'content', 'reg_prop_search_form' ); ?>
                
                </div>
                <div role="tabpanel" class="tab-pane " id="adv-prop-search">
                
                    <?php get_template_part( 'content', 'adv_prop_search_form' ); ?>
                    
                </div>
             </div> <!-- /tabs -->

             <?php endif ; ?>

    </div>

</div>


<?php





?>
<div class="row">
    <div class="col-xs-12">
            <header>
                <h2 class="page-title"><?php printf( __( 'תוצאות חיפוש עבור: %s', '_tk' ), '<span></span>' ); ?></h2>
            </header><!-- .page-header -->
        <p><?php
        // if($area=='' && $city=='')
        // {
        //     echo 'נכס עם ';
        // }elseif($area && $city){
        //     echo 'נכס באזור '.$area. ' - ' .$city;
        // }elseif($area){
        //     echo 'נכס באזור '.$area;
        // }elseif($area){
        //     echo 'נכס באזור '.$city; 
        // }else{
            
        // }

        // if($type){
        //     echo 'נכס מסוג ' .$type;
        // }

        // if($fromrooms == '0' && $torooms == '0'){
        //    echo '';     
        // }elseif($fromrooms == $torooms){
        //     echo 'חדרים: '.$fromrooms;
        // }elseif($fromrooms != $torooms && $torooms !='0' && $fromrooms !='0'){
        //     echo 'חדרים: '.$fromrooms .'-'. $torooms.',';
        // }elseif($fromrooms && $torooms =='0'){
        //     echo $fromrooms .' חדרים ומעלה,';
        // }else{
        //     echo $torooms .' חדרים ומטה, ';
        // }


        // if($freetext){
        //     echo  'מכיל את הטקסט:'.$freetext;
        // };

            ?>
        
                </p>
                <p>
                    <?php
                    if($result_count != 0){
                    echo 'נמצאו '. $result_count .' תוצאות. ';
                    }
                    ?>
                </p>
            </div>
        </div>
            <?php if( $the_query->have_posts() ): ?>
                <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>


                    <?php get_template_part( 'content', 'search' ); ?>
                    
                <?php endwhile; ?>
            <div id="pagination">

                <?php
                                
                    $big = 999999999;
                     echo paginate_links( array(
                        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                        'format' => '?paged=%#%',
                        'current' => max( 1, get_query_var('paged') ),
                        'total' => $the_query->max_num_pages
                    ) );
                ?>
                <?php echo paginate_links( $args ); ?>

               
            </div>
            <?php else : ?>

                <?php get_template_part( 'no-results', 'search' ); ?>

            <?php endif; ?>
            <?php wp_reset_query();	 // Restore global post data stomped by the_post(). ?>
        </div>
    </div>
</div>
	


<?php get_footer(); ?>