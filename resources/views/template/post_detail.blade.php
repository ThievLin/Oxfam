@extends('template.layout.master')
@section('content')
	<!-- ============================= Inner Banner ========================== -->
	<section class="inner_banner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<h3>{{$data->title}}</h3>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="text-align:right;">
					<a href="contact" class="button_main get_in_touch transition3s">Get in Touch</a>
				</div>
			</div>
		</div>
	</section> <!-- /inner_banner -->
	<!-- ============================= /Inner Banner ========================== -->

	
<!-- =================== services page content ================== -->
	<section class="service_page_content" style="padding-top: 40px;">
		<div class="container">
	
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="tab_details">
					 <!-- Tab panes -->
						<div class="tab-content">
						    <div class="tab-pane active row" id="design">
								@if($data->image_post)
        
									@foreach($data->image_post as $k=>$ip)
									
										<img class="img-responsive col-lg-6 col-md-6 col-sm-6" src="{{ url('Galleries/'.$ip->image) }}" alt="image">
						
									@endforeach
								
								@endif
								
								<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-top: 30px; padding-bottom: 20px;">
									<h4><span>{{$data->title}}</span></h4>
									<p>
									{!!$data->description!!}
									</p>
						      	</div>
						    </div>

						</div>
					</div> 
				</div>
			</div> <!-- End row -->
		</div> <!-- End container -->
	</section> <!-- /service_page_content -->



@endsection
<!-- =================== /services page content ================== -->