<!-- ================================= News ============================== -->
<section class="news">
    <div class="container welcome_banner">
        <div class="row">
            @foreach ($cat->post as $p)
                {{-- <div class="col-lg-12 col-md-7 col-sm-9 col-xs-12">
                    <div class="title_holder2">
                        <h3 id="bott">Call to <span>{{ $p->title }}</span>&emsp;&emsp;</h3>
                        <br>
                        <a href="contact" id="donate"> Donate <i class="fa fa-caret-right"></i></a>
                        {!! $p->description !!}
                    </div>
                </div> --}}
                <div class="col-lg-9 col-md-10 col-sm-9 col-xs-12">
                    <h3 id="bott" style="margin-top: 0">Call to <span>{{ $p->title }}</span>&emsp;&emsp;</h3>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                    <a href="contact" style="margin: 0;width:100%" id="donate"> Donate <i
                            class="fa fa-caret-right"></i></a>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    {!! $p->description !!}
                </div>
            @endforeach

        </div>
    </div>
</section>

<!-- =============================== /News ========================== -->

<style>
    ol li {
        font-size: 18px;
        color: #272727;
        font-weight: 700
    }
</style>
