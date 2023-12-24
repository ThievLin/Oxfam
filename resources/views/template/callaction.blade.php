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
                    <h3 id="bott" style="margin-top: 0; margin-bottom:24px">Call to
                        <span>{{ $p->title }}</span>&emsp;&emsp;
                    </h3>
                </div>

                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    {!! $p->description !!}
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="contact"
                        style="margin: 15px 20px 0px 20px; margin-left:auto; margin-right:auto; display:block;"
                        id="donate"> Donate <i class="fa fa-caret-right"></i></a>
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
