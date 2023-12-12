{{-- planning --}}
<?php $p= $cat->post->first() ?>
<section class="page-content custom-background color-background" style="background-color: #ffffff; margin-bottom: 0px; margin-top: 0px; padding-bottom: 40px;">
    <section class="container" style="max-width: 1200px; ">
      <div class="row" style="
          margin-left: auto;
          margin-right: auto;
          box-shadow: -1px 3px 20px 9px rgba(212, 212, 212, 1);
          -webkit-box-shadow: -1px 3px 20px 9px rgba(212, 212, 212, 1);
          -moz-box-shadow: -1px 3px 20px 9px rgba(212, 212, 212, 1);
          padding: 25px;
          border-radius: 4px;
        ">
        
        <div class="col-md-12" >
          <div class="custom-heading">
            <h3 style="margin-top:0; line-height:50px;"> <span>{{$p->title}}</span></h3>
          </div>
          <p style="font-size: 16px;">
            {!!$p->description!!}
            <br>
          </p>
        </div>
      </div>
    </section>
  </section>



  