 <!-- =========================== Full Width details page ================== -->
 <?php $p = $cat->post->first(); ?>
 <div class="full_width_details_text container" style="padding-bottom: 40px;">
     <h4>{{ $p->title }}</h4>
     <p>
         {!! $p->description !!}
     </p>
 </div>


 <section class="about-page-section" style="padding-bottom: 50px;">
     <div class="container">
         <div class="row">
             @if ($p->image_post)
                 @foreach ($p->image_post as $k => $ip)
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                         <div class="client-wrap client-slider text-center">
                             <div class="client-item ">
                                 <img src="{{ url('Galleries/' . $ip->image) }}" alt=""
                                     style="padding-right: 20px" id="img-partner">
                             </div>
                         </div>
                     </div>
                 @endforeach
             @endif
         </div>
     </div>
 </section>
