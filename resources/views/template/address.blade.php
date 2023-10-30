<?php
$setting = App\Models\Setting::first();
?>
<section class="contact_us" style="padding-top: 40px;">
    <div class="container">
      <div class="row contact_deatils">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pull-left address">
          <h4 style="line-height:45px;">Need Our Service Or Have Queries ?</h4>
          <div class="address_holder">
            <div class="address_type">
              <div class="icon_holder border_round">
                <div class="icon_bg border_round">
                  <i class="fa fa-map-marker"></i>
                </div> <!-- /icon_bg -->
              </div> <!-- /icon_holder -->
              <div class="text">
                <h5>Address</h5>
                <p>{!!$setting->address_site!!}</p>
              </div> <!-- /text -->
            </div> <!-- /address_type -->
  
            <div class="address_type">
              <div class="icon_holder border_round">
                <div class="icon_bg border_round">
                  <i class="fa fa-phone"></i>
                </div> <!-- /icon_bg -->
              </div> <!-- /icon_holder -->
              <div class="text">
                <h5>Contact Details</h5>
                <p>Troll Free:{!!$setting->phone!!} </p>
                
              </div> <!-- /text -->
            </div> <!-- /address_type -->
  
            <div class="address_type">
              <div class="icon_holder border_round">
                <div class="icon_bg border_round">
                  <i class="fa fa-envelope"></i>
                </div> <!-- /icon_bg -->
              </div> <!-- /icon_holder -->
              <div class="text">
                <h5>Contact Email</h5>
                <a href="https://cambodia-redd.org/" style="color: black;">sina.yun@oxfam.org</a>
              </div> <!-- /text -->
            </div> <!-- /address_type -->
  
          </div> <!-- /address_holder -->
        </div>
      </div> <!-- /contact_deatils -->
    </div> <!-- /container -->
  </section>