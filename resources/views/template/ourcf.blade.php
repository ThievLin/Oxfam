<!-- =========================== All services page ======================== -->
<section class="service_page container" style="padding-top: 50px;">
    <div class="row">
        @foreach ($cat->post as $p)
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="service_item">
                    <div class="img_holder">
                        <a href="{{ url($p->link) }}">
                            <img src="{{ url('images/' . $p->image) }}" alt="images" class="img-responsive">
                            <div class="overlay transition3s">
                                <div class="border"></div>
                            </div> <!-- /overlay -->
                        </a>
                    </div> <!-- /img_holder -->
                    <div class="text">
                        <h5>{{ $p->title }}</h5>
                        {{-- {!! substr($p->description, 0, 805)!!} --}}
                        <p>{!! $p->description !!}</p>
                        @if (Request::segment(1) == 'en')
                            @if ($p->link != '#')
                                <a href="{{ url('en/' . $p->link) }}" class="main_anchor transition-ease">Read More <i
                                        class="fa fa-caret-right"></i></a>
                            @endif
                        @elseif (Request::segment(1) == 'kh')
                            @if ($p->link != '#')
                                <a href="{{ url('kh/' . $p->link) }}" class="main_anchor transition-ease">Read More <i
                                        class="fa fa-caret-right"></i></a>
                            @endif
                        @endif
                        {{-- <p>{!! substr($p->description, 0, 805)!!}</p> --}}
                        {{-- <a href="{{ url($p->link) }}" class="main_anchor transition-ease">Read More <i class="fa fa-caret-right"></i></a> --}}
                        {{-- <a href="{{ url($p->link.'/'.$p->id.'/detail') }}" class="main_anchor transition-ease">Read More <i class="fa fa-caret-right"></i></a> --}}
                    </div> <!-- /text -->
                </div> <!-- /service_item -->
            </div>
        @endforeach
    </div>
</section> <!-- /service_page -->



<!-- =========================== /All services page ======================== -->
