<?php
$setting = App\Models\Setting::first();
$socials = App\Models\Social::all();
$footerColumnOne = App\Models\Footer::find(1);
$footerColumnTwo = App\Models\Footer::find(2);
?>
<!-- ============================== Footer ===================== -->
<footer>
    <div class="container">
        <div class="main_footer" style="padding-bottom: 50px;">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 about_gardener">
                    <h5>About <span>Promotion Equitable Climate Actions</span> in Cambodia Project</h5>
                    <p style="color: #9e9e9e;">{!! $setting->description !!}</p>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 services">
                    <h5>{{ $footerColumnOne->title }}</h5>
                    <ul>
                        @foreach ($footerColumnOne->pages as $footerOne)
                            <li><a href="{{ url($footerOne->link) }}" class="transition3s"><i
                                        class="fa fa-check-square"></i>{{ $footerOne->title }}</a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 cf_links">
                    <h5>{{ $footerColumnTwo->title }}</h5>
                    <br>
                    <ul>
                        @foreach ($footerColumnTwo->pages as $footerTwo)
                            <li>
                                <a href="{{ url($footerTwo->link) }}" class="transition3s">
                                    <i class="fa fa-check-square"></i>{{ $footerTwo->title }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 oxfam_links">
                    <h5>Oxfam Cambodia</h5>
                    <br>
                    <ul>
                        <li><i class="fa fa-map-marker"></i>&emsp;{{ strip_tags($setting->address_site) }}</li>
                        <li><i class="fa fa-phone"></i>&emsp;Tel: (+855) 23 885 412; (855) 23 
                            885 413</li>
                        <li><i class="fa fa-envelope-o"></i>&emsp;<a href=" {{ url('https://cambodia-redd.org/') }}"
                                class="transition3s">cambodia-redd.org</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 ministry_links">
                    <h5>Ministry Environment</h5>
                    <br>
                    <ul>
                        <li><i class="fa fa-map-marker"></i>&emsp;{{ strip_tags($setting->address) }}</li>
                        <li>
                            <i class="fa fa-phone">
                            </i>&emsp;Tel: (+855) 23 213 908
                            (+855) 23 220 369
                        </li>
                        <li>
                            <i class="fa fa-envelope-o"></i>&emsp;
                            <a href=" {{ url('https://www.moe.gov.kh/') }}" class="transition3s">moe.gov.kh</a>
                        </li>
                    </ul>
                </div>
            </div> <!-- /row -->
        </div> <!-- /main_footer -->
        <div class="bottom_footer">
            <div class="row">

                <div class="col-lg-6 col-md-6 col-sm-4 col-xs-12" style="padding-top: 20px;">
                    <div>
                        <ul style="display: flex;">
                            @foreach ($socials as $social)
                                <li><a href="{{ url($social->link) }}"><img src="{{ url('images/' . $social->image_icon) }}"
                                            alt="" style="height: 35px; height: 35px; padding-right: 7px;"></a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-8 col-xs-12">
                    <p style="color: #9e9e9e; font-size: small">{{ strip_tags($setting->copyright) }}</p>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">
                    <a href="#top" class="back_top"><i class="fa fa-chevron-up"></i></a>
                </div>
            </div>
        </div> <!-- /bottom_footer -->
    </div> <!-- /container -->
</footer>

<!-- ============================== /Footer ===================== -->
