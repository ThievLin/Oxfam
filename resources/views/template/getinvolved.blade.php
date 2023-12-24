<?php $p = $cat->post->first(); ?>

<section class="page-content custom-background color-background"
    style="background-color: #ffffff; margin-bottom: 0px; margin-top: 0px; padding-bottom: 25px; padding-top: 50px;">
    <section class="container" style="max-width: 1200px; ">
        <div class="row"
            style="
              margin-left: auto;
              margin-right: auto;
              box-shadow: -1px 3px 20px 9px rgba(212, 212, 212, 1);
              -webkit-box-shadow: -1px 3px 20px 9px rgba(212, 212, 212, 1);
              -moz-box-shadow: -1px 3px 20px 9px rgba(212, 212, 212, 1);
              padding: 25px;
              border-radius: 4px;
            ">
            <div class="custom-heading get-involved">
                <h3 class="overview-heading"><span>{{ $p->title }}</span></h3>
                <p>{!! $p->description !!}</p>
            </div>
        </div>

    </section>
</section>
