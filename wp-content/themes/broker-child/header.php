<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package _tk
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title><?php wp_title( '|', true, 'right' ); ?></title>




	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	
	<?php wp_head(); ?>




<?php 

/**
 * Logo
 */
$custom_logo_id = get_theme_mod( 'custom_logo' );
$image = wp_get_attachment_image_src( $custom_logo_id , 'full' );
$logo = $image[0];
?>


	<meta property="og:url"           content="<?php echo site_url(); ?>" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="<?php echo bloginfo(); ?>" />
  <meta property="og:description"   content="<?php bloginfo( 'description' ); ?>" />
  <meta property="og:image"         content="<?php echo $logo; ?>" />


</head>

<body <?php body_class(); ?>>



  <?php
/**
 * tcpdf print library call
 */

 if(isset($_POST["create_pdf"])){
	 $page_print_content = file_get_contents(get_permalink());
	 //echo $page_print_content; 
	 require_once("includes/tcpdf/tcpdf.php");
	 $obj_pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
	 $obj_pdf->SetCreator(PDF_CREATOR);  
	 $obj_pdf->SetTitle("Export HTML Table data to PDF using TCPDF in PHP");  
	 $obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
	 $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
	 $obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
	 $obj_pdf->SetDefaultMonospacedFont('helvetica');  
	 $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
	 $obj_pdf->SetMargins(PDF_MARGIN_LEFT, '5', PDF_MARGIN_RIGHT);  
	 $obj_pdf->setPrintHeader(false);  
	 $obj_pdf->setPrintFooter(false);  
	 $obj_pdf->SetAutoPageBreak(TRUE, 10);  
	 $obj_pdf->SetFont('helvetica', '', 12);  
	 $obj_pdf->AddPage();  
	 $content = '';  
	 $obj_pdf->writeHTML($page_print_content);  
	 $obj_pdf->Output('sample.pdf', 'I');  
 }
?>


	<?php do_action( 'before' ); ?>

	<header id="masthead" class="site-header header" role="banner">
	<?php // substitute the class "container-fluid" below if you want a wider content area ?>
		<div class="container-fluid">
		
				<div class="phone vertical-center-flex header">
					<a href="tel:*8253" class="header-phone"><img  src="<?php echo home_url('wp-content/uploads/2018/01/broker-phone.png'); ?>"></a>
					<!--facebook -->
				<div class="fb-like fb_iframe_widget" style="width: 100px;font-size: 0;top: 5px;margin-right: 10px;" data-href="https://www.facebook.com/broker.re" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=1671114209774074&amp;container_width=100&amp;href=https%3A%2F%2Fwww.facebook.com%2Flincoln.re&amp;layout=button_count&amp;locale=he_IL&amp;sdk=joey&amp;share=false&amp;show_faces=false"><span style="vertical-align: bottom; width: 107px; height: 20px;"><iframe name="f1755581af7e1e" width="1000px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/v2.3/plugins/like.php?action=like&amp;app_id=1671114209774074&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2F0sTQzbapM8j.js%3Fversion%3D42%23cb%3Df3bf8425d49f2d%26domain%3Dlincoln-re.co.il%26origin%3Dhttp%253A%252F%252Flincoln-re.co.il%252Ff301f9143cc0b78%26relation%3Dparent.parent&amp;container_width=100&amp;href=https%3A%2F%2Fwww.facebook.com%2Flincoln.re&amp;layout=button_count&amp;locale=he_IL&amp;sdk=joey&amp;share=false&amp;show_faces=false" style="border: none; visibility: visible; width: 107px; height: 20px;" class=""></iframe></span></div>
					<!-- / facebook -->
	
	
		</div>
		<div class="container">
			<div class="container site-header-inner header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only"><?php _e('Toggle navigation','_tk') ?> </span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="navbar navbar-default">
					
					
	
						<!-- The WordPress Menu goes here -->
						<?php wp_nav_menu( array(
							'theme_location'    => 'primary',
							'depth'             => 3,
							'container'         => 'div',
							'container_class'   => 'collapse navbar-collapse',
							'container_id'      => 'bs-example-navbar-collapse-1',
							'menu_class'        => 'nav navbar-nav',
							'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
							'walker'            => new WP_Bootstrap_Navwalker(),
						) ); ?>
	
					<div class="logo-cont">
							<?php
							if ( function_exists( 'the_custom_logo' ) ) {
									the_custom_logo();
								}   
						?>  
					</div>
	
	
				</div><!-- .navbar -->
					
			</div><!-- site-header-inner header -->
		</div><!-- .container -->
	
	
	
			</div>
		</div><!-- .container -->
	</header><!-- #masthead -->

<nav class="site-navigation">
<?php // substitute the class "container-fluid" below if you want a wider content area ?>
	<div class="container-fluid">
		<div class="row">
			<div class="site-navigation-inner col-sm-12 zero-height">

			</div>
		</div>
	</div><!-- .container -->
</nav><!-- .site-navigation -->


<div id="social-tab">

				

			<div class="social-item">
				<a data-toggle="modal" data-target="#sviut"><span class="fa fa-question"></span></a>
			</div>

			<div class="social-item">
				<a href="https://www.youtube.com/channel/UCXh_TZN4b308T-hTyit8Ykw" target="_blank"><span class="fa fa-youtube"></span></a>
			</div>

			<div class="social-item">
				<a href="https://www.facebook.com/lincoln.re" target="_blank"><span class="fa fa-facebook"></span></a>
			</div>

		</div>

	
	
		<div class="contact-tab" style="transform: translateX(0px); z-index: 5;">
		<!--<i class="glyphicon glyphicon-menu-up pull-left"></i>-->
			<h4>נשמח לעזור
				<span class="fa fa-chevron-left"></span><span class="fa fa-chevron-left"></span>
			</h4>
<?php echo do_shortcode('[contact-form-7 id="574" title="נשמח לעזור"]'); ?>
	</div>