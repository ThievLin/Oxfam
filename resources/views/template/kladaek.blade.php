
<?php $p= $cat->post->first() ?>

<!-- =================== services page content ================== -->
	<section class="service_page_content" style="padding-top: 40px;">
		<div class="container">
			
				
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="tab_details">
					 <!-- Tab panes -->
						<div class="tab-content">
						    <div class="tab-pane active row" id="design">
								@if($p->image_post)
        
								@foreach($p->image_post as $k=>$ip)
								
								<img class="img-responsive col-lg-6 col-md-6 col-sm-6" src="{{ url('Galleries/'.$ip->image) }}" alt="image">
					
								@endforeach
								
								@endif
								<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 30px; padding-bottom: 20px;">
									<h4><span>{{$p->title}}</span></h4>
									<p>
									{!!$p->description!!}
									</p>
						      	</div>
						    </div>

						</div>
					</div> <!-- End tab_details -->
				</div>
			</div> <!-- End row -->
		</div> <!-- End container -->
	</section> <!-- /service_page_content -->


<!-- =================== /services page content ================== -->
