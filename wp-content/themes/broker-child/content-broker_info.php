<div class="row flex" id="broker-info">
            <div class="col-md-3 flex" id="broker-data-right">
                <div class="row v-center h-center">
                   <div class="broker-image" style="background-image:url(<?php echo get_user_meta(get_the_author_meta('ID'), 'pie_profile_pic_6', true)?>"></div>
                </div>
                <div class="row v-center h-center" id="broker-page-link-cont">
                    <a id="broker-page-link" href="<?php echo site_url().'/main/?bname='.$user_id; ?>">לצפייה בדף הסוכן</a>
                </div>
            </div>

            <div class="col-md-4 col-xs-12">
                <h3>
ברוקר      <span class="black bold">  
 <?php echo get_the_author_meta('display_name'); ?></span>
                </h3>
                <div id="broker-data" class="desktop">
                <?php
                if(get_user_meta( $user_id, 'pie_text_7', true )):?>
                <div class="row flex">
                    <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_03.png'); ?>" alt=""></div>
                    <div class="col-xs-10 v-center"><?php echo get_user_meta( $user_id, 'pie_text_7', true ); ?></div>
                </div>
                <?php endif; ?>
                
                     <!-- <div class="row flex">
                         <div class="col-xs-2"><img src="<?php //echo home_url('wp-content/uploads/2017/10/broker-contact-icon_08.png'); ?>" alt=""></div>
                         <div class="col-xs-10 v-center"><?php //echo $user_info->user_email; ?></div>
                     </div>
         -->
                <?php
                if(get_user_meta( $user_id, 'pie_phone_10', true )):?>
                    <div class="row flex">
                        <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_12.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><?php echo get_user_meta( $user_id, 'pie_phone_10', true ); ?></div>
                    </div>
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_phone_11', true )):?>
                    <div class="row flex">
                        <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_10.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><?php echo get_user_meta( $user_id, 'pie_phone_11', true ); ?></div>
                    </div>
                <?php endif; ?>

                <?php
                if(get_user_meta( $user_id, 'url', true )):?> <!-- site-->
                    <div class="row flex">
                        <div class="col-xs-2 "><img src="<?php echo home_url('wp-content/uploads/2017/12/site_logo.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><a href="<?php echo get_user_meta( $user_id, 'url', true ); ?>" target="_balnk">כנסו לאתר שלי</a></div>
                    </div>
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_text_30', true )):?> <!-- youtube-->
                    <div class="row flex">
                        <div class="col-xs-2 "><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_14.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><a href="<?php echo get_user_meta( $user_id, 'pie_text_30', true ); ?>"" target="_balnk">לפתיחת דף היוטיוב</a></div>
                    </div>
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_text_29', true )):?> <!-- facebook-->
                    <div class="row flex">
                        <div class="col-xs-2"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_16.png'); ?>" alt=""></div>
                        <div class="col-xs-10 v-center"><a href="<?php echo get_user_meta( $user_id, 'pie_text_29', true ); ?>"" target="_balnk">לפתיחת דף הפייסבוק</a></div>
                    </div>
                <?php endif; ?>
            </div>
        
            <div id="broker-data-mobile" class="mobile">
                <?php
                if(get_user_meta( $user_id, 'pie_text_7', true )):?>
                    <div class="row flex agency">
                        <div class="col-xs-12 h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_03.png'); ?>" alt=""></div>
                        <div class="col-xs-12 h-center"><?php echo get_user_meta( $user_id, 'pie_text_7', true ); ?></div>
                    </div>
                <?php endif; ?>
        
        
        
             <div id="broker-vc">
                <a class="flex col-item" href="mailto:<?php echo $user_info->user_email; ?>">
                    <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_08.png'); ?>" alt=""></div>
                    <div class="h-center text-center">שלחו לי מייל</div>
                </a>
                
        
                <?php
                if(get_user_meta( $user_id, 'pie_phone_10', true )):?>
                    
                        <a class="flex col-item" href="tel:<?php echo get_user_meta( $user_id, 'pie_phone_10', true ); ?>">
                        <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_12.png'); ?>" alt=""></div>
                        <div class="h-center text-center">צלצלו אלי</div>
                        </a>
                   
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_phone_10', true )):
                $cellphone = get_user_meta( $user_id, 'pie_phone_10', true );
                $ilprefix = '+972';
                $int_cell_phone = $ilprefix .''. substr($cellphone, 1);
                ?>
                   
                        <a class="flex col-item" href="https://api.whatsapp.com/send?phone=<?php echo $int_cell_phone; ?>&text= היי, אנחנו מעוניינים בבית ברחוב <?php the_field('prop_street'); ?> <?php the_field('prop_address_no'); ?>שב<?php the_field('prop_city'); ?> אשמח אם תיצור איתי קשר">
                        <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/whatsapp.png'); ?>" alt=""></div>
                        <div class="h-center text-center">שלחו לי וואטסאפ</div>
                        </a>
                   
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_phone_11', true )):?>
                  
                        <a class="flex col-item" href="tel:<?php echo get_user_meta( $user_id, 'pie_phone_11', true ); ?>">
                        <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_10.png'); ?>" alt=""></div>
                        <div class="h-center text-center">צלצלו למשרד</div>
                        </a>
                    
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'url', true )):?>
                   
                        <a class="flex col-item" href="<?php echo get_user_meta( $user_id, 'url', true ); ?>" target="_blank">
                        <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/12/site_logo.png'); ?>" alt=""></div>
                        <div class="h-center text-center">כנסו לאתר שלי</div>
                        </a>
                   
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_text_30', true )):?>
                   
                        <a class="flex col-item"  href="<?php echo get_user_meta( $user_id, 'pie_text_30', true ); ?>" target="_blank">
                        <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_14.png'); ?>" alt=""></div>
                        <div class="h-center text-center">צפו בערוץ היוטיוב שלי</div>
                        </a>
                   
                <?php endif; ?>
                <?php
                if(get_user_meta( $user_id, 'pie_text_29', true )):?>
             
                    <a class="flex col-item" href="<?php echo get_user_meta( $user_id, 'pie_text_29', true ); ?>" target="_blank">
                        <div class="h-center"><img src="<?php echo home_url('wp-content/uploads/2017/10/broker-contact-icon_16.png'); ?>" alt=""></div>
                        <div class="h-center text-center">צפו בדף הפייסבוק שלי</div>
                    </a>
                  
                <?php endif; ?>
                </div>
            </div>


            </div>
            <div class="col-md-5" id="broker-form"><?php echo do_shortcode('[contact-form-7 id="370" title="broker cf"]'); ?></div>
        </div>