<form class="search-slide" role="search" action="<?php echo home_url('/advanced-property-search/'); ?>" method="get" id="adv-prop-searchform">

                            <div class="row">
                                <div class="col-xs-12">
                   
                                    <!-- אזור -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                            <?php 
                                                select(field_59f2dfc922689, 'אזור', $area);
                                            ?>
                                        </div>
                                    </div>
                                    <!--  / אזור -->
                                    <!-- ישוב -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                            // select(field_59ae96d970a06, 'עיר', $city);
                                        ?>

                                        <input type="text" class="form-control" placeholder="עיר" name="field_59ae96d970a06" id="prop-city">
                                        </div>
                                    </div>
                                    <!--  / ישוב -->
                                    <!-- סוג הנכס -->
                                    <div class="col-md-4 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                            select(field_59ec7533be002, 'סוג הנכס', $type);
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / סוג הנכס -->

                                    <!-- מחדרים -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        search_select(field_59ae9e2370a0b, 'מחדרים', 'fromrooms', 0);
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / מחדרים -->
                                    <!-- עד חדרים -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                    search_select(field_59ae9e2370a0b, 'עד חדרים', 'torooms',0);
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / עד חדרים -->
                                    </div>
                            </div>
                                <!-- שורה ראשונה -->
                                <!-- שורה שנייה -->
                                <div class="row">
                                <div class="col-xs-12">
                        
                                    <!-- מקומה -->
                                    <div class="col-md-2 col-sm-12">
                                    <div class="form-group">
                                        <?php 
                                        search_select(field_59ae9dac70a0a, 'מקומה', 'fromfloor', -2);
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / מקומה -->
                                    <!-- עד קומה -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        search_select(field_59ae9dac70a0a, 'עד קומה', 'tofloor', 22);
                                        
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / עד קומה -->
                                    <!-- ממחיר -->
                                     <div class="col-md-2 col-sm-12 form-group">
                                        <input type="text" name="min" class="form-control" placeholder="ממחיר" value="">
                                     </div>
                                     <div class="col-md-2 col-sm-12 form-group">
                                        <input type="text" name="max"  class="form-control" placeholder="עד מחיר">
                                     </div>
                                    <!-- <div class="col-md-4 col-sm-12">
                                    <section class="range-slider">
                                    <span class="rangeValues"></span>
                                    <input value="<?php echo max_meta_value(); ?>"  max="<?php echo max_meta_value(); ?>" step="10000" type="range" name="max">
                                    <input value="<?php echo min_meta_value(); ?>" min="<?php echo min_meta_value(); ?>" max="<?php echo max_meta_value(); ?>"  step="10000" type="range" name="min">
                                </section>
                                    </div> -->
                                    <!--  / עד מחיר -->
                                    <!--  / טקסט חופשי -->
                                    <div class="col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="freetext" placeholder="טקסט חופשי">
                                        </div>
                                    </div>
                                <!--  / טקסט חופשי -->

                                <!-- /שורה שנייה -->
                                                                    
                                
                                </div>
                            </div>    
                  


                            <div class="row">
                            <div class="col-xs-12">
                   
                      
                              
                                <div class="col-md-2 col-sm-12">    <!-- ממ"ר -->
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="from_size" placeholder="ממטר ריבוע">
                                    </div>
                                </div>

                                <div class="col-md-2 col-sm-12"> <!-- ממ"ר עד-->
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="to_size" placeholder="עד ממטר ריבוע">
                                    </div>
                                </div>

                                <!--   שלח -->

                                <div class="col-md-2 col-sm-12">
                                    <div class="form-group">
                                    <input type="submit"  name="adv-prop-search-form" class="btn formsubmit" value="חיפוש">
                                    </div>
                                </div>
                                <!--  / שלח -->

                                <!-- /שורה שנייה -->
                                                                    
                                
                                </div>
                            </div>    
                        </form>     