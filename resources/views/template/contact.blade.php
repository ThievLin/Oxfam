<?php $p= $cat->post->first() ?>
<!-- =============================== Contact us ========================== -->
<section class="contact_us" style="padding-top: 40px;">
  <div class="container">
    <div class="row heading">
      <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <div class="title_holder2">
          <h3>Get in <span>Touch</span></h3>
        </div> <!-- /title_holder2 -->
      </div>
      <div class="col-lg-9 col-md-8 col-sm-6 col-xs-12">
      <h5>{{$p->title}}</h5><br><br>
        <p>
          {!!$p->description!!}
        </p>
      </div>
    </div> <!-- /row -->
  </div> <!-- /container -->
</section>

<!-- =============================== Contact us ========================== -->




