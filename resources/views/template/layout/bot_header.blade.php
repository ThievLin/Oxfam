          
        <?php
        $setting = App\Models\Setting::first();
        ?>
        <!-- ================ Bottom header ============= -->
            <div class="bottom_header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-3 col-md-12 col-sm-12 col-xs-12">
                            <div class="logo_holder">
                                <a href="#"><img src="{{ url('images/'.$setting->logo_image) }}" alt="logo" class="img-responsive"></a>
                            </div> <!-- /logo_holder -->
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                            <div class="time_schedule">
                                <p>{!!$setting->work_time!!}</p>
                            </div><!--  /time_schedule -->
                        </div>
                        
                    </div> <!-- /row -->
                </div> <!-- /container -->
            </div> <!-- /bottom_header -->
         
            <!-- ================ /Bottom header ============= -->