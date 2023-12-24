<?php $p = $cat->post->first(); ?>
<!-- =============================== Contact us ========================== -->
<section class="contact_us" style="padding-top: 40px;">
    <div class="container">
        <div class="row heading">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="title_holder2" style="margin-bottom: 24px">
                    <h3>Get in <span>Touch</span></h3>
                </div> <!-- /title_holder2 -->
                <h5 style="margin-bottom:24px;">{{ $p->title }}</h5>
                {!! $p->description !!}
            </div>
        </div> <!-- /row -->
    </div> <!-- /container -->
</section>

<!-- =============================== Contact us ========================== -->
