<form class="search-slide" role="search" action="<?php echo home_url('/'); ?>" method="get" id="reg-prop-searchform">

                            <div class="row">
                                <div class="col-xs-12">
                        <input type="hidden" name="s">
                        <input type="hidden" name="post_type" value="property">
                                    <!-- אזור -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                            <?php 
                                                select(field_59f2dfc922689, 'אזור');
                                            ?>
                                        </div>
                                    </div>
                                    <!--  / אזור -->
                                    <!-- ישוב -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                            select(field_59ae96d970a06, 'ישוב');
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / ישוב -->
                                    <!-- סוג הנכס -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                            select(field_59ec7533be002, 'סוג הנכס');
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / סוג הנכס -->
                                    <!-- מכירה/השכרה -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">השכרה/מכירה</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / מכירה/השכרה -->
                                    <!-- מחדרים -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                          select(field_59ae9e2370a0b, 'מחדרים');
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / מחדרים -->
                                    <!-- עד חדרים -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                            $field = get_field_object('field_59ae9e2370a0b');
                                            
                                            if( $field ) {
                                                echo '<select class="form-control" name="torooms">';
                                                echo '<option value=""> עד חדרים </option>';
                                                    foreach( $field['choices'] as $k => $v )
                                                    {
                                                        echo '<option value="' . $k . '">' . $v . '</option>';
                                                    }
                                                echo '</select>';
                                            }    
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
                        <input type="hidden" name="s">
                        <input type="hidden" name="post_type" value="property">
                                    <!-- מקומה -->
                                    <div class="col-md-2 col-sm-12">
                                    <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">מקומה</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / מקומה -->
                                    <!-- עד קומה -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">עד קומה</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / עד קומה -->
                                    <!-- ממחיר -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">ממחיר</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / ממחיר -->
                                    <!-- עד מחיר -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">עד מחיר</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / עד מחיר -->
                                    <!--  / טקסט חופשי -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="post_type" placeholder="טקסט חופשי">
                                        </div>
                                    </div>
                                <!--  / טקסט חופשי -->
                                    <!--   שלח -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <input type="submit"  name="reg-prop-search-form" class="btn formsubmit" value="חיפוש">
                                        </div>
                                    </div>
                                <!--  / שלח -->

                                <!-- /שורה שנייה -->
                                                                    
                                
                                </div>
                            </div>    
                        </form>     