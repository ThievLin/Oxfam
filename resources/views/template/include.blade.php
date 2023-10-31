	<!-- ======================== Buy on Themeforest =======================  -->
	<section class="buy_on_themeforest">
		<div class="container">
            @foreach ( $cat->post as $p )
			<h4>{{$p->title}}</h4>
			<a href="{{url('contact')}}" class="button_main mouse_hover2 transition3s">{!! $p->description!!}</a>
		</div>
	</section> <!-- /buy_on_themeforest -->
	
	<!-- ======================== /Buy on Themeforest =======================  -->
