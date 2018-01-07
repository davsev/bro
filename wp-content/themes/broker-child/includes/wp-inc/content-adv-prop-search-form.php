<form class="search-slide" role="search" action="<?php echo home_url('/'); ?>" method="get" id="adv-prop-searchform">

                            <div class="row">
                                <div class="col-xs-12">
                        <input type="hidden" name="s">
                        <input type="hidden" name="post_type" value="property">
                                    <!-- אזור -->
                                    <div class="col-md-2 col-sm-12">
                                    <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">אזור</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / אזור -->
                                    <!-- ישוב -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">ישוב</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / ישוב -->
                                    <!-- סוג הנכס -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">סוג הנכס</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / סוג הנכס -->
                                    <!-- מכירה/השכרה -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
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
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">מחדרים</option>';
                                                foreach( $field['choices'] as $k => $v )
                                                {
                                                    echo '<option value="' . $k . '">' . $v . '</option>';
                                                }
                                            echo '</select>';
                                        }
                                        ?>
                                        </div>
                                    </div>
                                    <!--  / מחדרים -->
                                    <!-- עד חדרים -->
                                    <div class="col-md-2 col-sm-12">
                                        <div class="form-group">
                                        <?php 
                                        $area_field_key = "field_59ae96d970a06";
                                        $field = get_field_object($area_field_key);
                                        
                                        if( $field ) {
                                            echo '<select class="form-control" name="' . $field['key'] . '">';
                                            echo '<option value="">עד חדרים</option>';
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
                                        <input type="submit" name="adv-prop-search-form" class="btn formsubmit" value="חיפוש">
                                        </div>
                                    </div>
                                <!--  / שלח -->

                                <!-- /שורה שנייה -->
                                                                    
                               
                                </div>
                            </div>    
                        </form>     