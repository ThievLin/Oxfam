<?php
$setting = App\Models\Setting::first();
$p= $cat->post->first();
?>
<section class="contact_us">
    <div class="container">
      <div class="row contact_deatils">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pull-left address">
          <h4 style="margin-bottom: 32px">{{$p->title}}</h4>
          <div class="address_holder">
            <div class="address_type">
              <div class="icon_holder border_round" id="icon">
                <div class="icon_bg border_round">
                  <i class="fa fa-map-marker"></i>
                </div> <!-- /icon_bg -->
              </div> <!-- /icon_holder -->
              <div class="text">
                <h5 id="text">Address</h5>
                <p>{!!$setting->address_site!!}</p>
              </div> <!-- /text -->
            </div> <!-- /address_type -->
  
            <div class="address_type">
              <div class="icon_holder border_round" id="icon">
                <div class="icon_bg border_round">
                  <i class="fa fa-phone"></i>
                </div> <!-- /icon_bg -->
              </div> <!-- /icon_holder -->
              <div class="text">
                <h5 id="text">Contact Details</h5>
                <p>Troll Free: {!!$setting->phone!!} </p>
                
              </div> <!-- /text -->
            </div> <!-- /address_type -->
  
            <div class="address_type">
              <div class="icon_holder border_round" id="icon">
                <div class="icon_bg border_round">
                  <i class="fa fa-envelope"></i>
                </div> <!-- /icon_bg -->
              </div> <!-- /icon_holder -->
              <div class="text">
                <h5 id="text">Contact Email</h5>
                <a href="mailto:{!!$setting->email!!}" style="color: black;">{{$setting->email}}</a>
              </div> <!-- /text -->
            </div> <!-- /address_type -->
  
          </div> <!-- /address_holder -->
        </div>
      </div> <!-- /contact_deatils -->
    </div> <!-- /container -->
  </section>