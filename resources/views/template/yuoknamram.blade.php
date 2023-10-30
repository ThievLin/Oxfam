
<!-- =================== services page content ================== -->
<section class="testimonial">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="tab_details">
				 <!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane active row" id="design">
							@foreach ( $cat->post  as $key=> $p )
							@if ($key==0)

								@if($p->image_post)
		
									@foreach($p->image_post as $k=>$ip)
									
										<img class="img-responsive col-lg-6 col-md-6 col-sm-6" src="{{ url('Galleries/'.$ip->image) }}" alt="image">
						
									@endforeach
							
								<div class="text col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<br>
									<h4><span>{{$p->title}}</span></h4>
									<div class="row">
										<div class="col-lg-12">                
											<p>
												{!!$p->description!!}
												
												<br>
											</p>
													
										</div>
									</div>
								</div>

							@endif

							@else

							<div class="col-lg-6 col-md-6 col-sm-6 bottom_text_left" style="padding-top: 20px; padding-left: 30px;">
								<h5><span>{{$p->title}}</span></h5>
								<p>
									{!!$p->description!!}
								</p>			
								@if ($p->image)
								<img class="img-responsive col-lg-12 col-md-12 col-sm-12" src="{{url('images/'.$p->image)}}" alt="image" style="padding-top: 60px;">
								@endif
							</div>		
							@endif

							@endforeach
							
						</div>
					</div>
				</div> <!-- End tab_details -->
			</div>
		</div> <!-- End row -->
	</div> <!-- End container -->
</section> <!-- /service_page_content -->



