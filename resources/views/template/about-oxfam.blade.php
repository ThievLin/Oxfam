<?php $p= $cat->post->first() ?>
<section class="full_width_details_text container" style="padding-top: 72px; padding-bottom: 24px">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 text ">
            <div class="title_holder2">
                <h3 style="margin-top:0; line-height:50px;"> <span> {{$p->title}}</span></h3>
            </div> <!-- /title_holder2 -->
            <p> {!!$p->description!!}</p>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <img src="{{url('images/'.$p->image)}}" alt="images" class="img-responsive" id="img-oxfam">
        </div>
    </div>
</section>
