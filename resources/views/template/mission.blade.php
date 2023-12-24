<section class="page-content custom-background color-background"
    style="background-color: #ffffff; margin-bottom: 0px; margin-top: 0px; text-align: center; padding-bottom: 30px; padding-top: 50px;">
    @foreach ($cat->post as $p)
        <section class="container" style="max-width: 950px; ">
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

                <div class="col-md-12">
                    <div class="custom-heading">
                        <h3 style="margin: 0px 0px 32px 0px"><span>{{ $p->title }}</span></h3>
                    </div>
                    {!! $p->description !!}
                    @if (count($p->image_post) > 0)
                        @foreach ($p->image_post as $k => $ip)
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
        <br>
    @endforeach
</section>
