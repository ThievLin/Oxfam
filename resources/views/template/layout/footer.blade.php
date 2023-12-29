<?php
$setting = App\Models\Setting::first();
$settingkh = App\Models\Setting::find(2);
$socials = App\Models\Social::all();
$footerColumnOne = App\Models\Footer::find(1);
$footerColumnTwo = App\Models\Footer::find(2);
$footerColumnThree = App\Models\Footer::find(3);
$footerColumnFour = App\Models\Footer::find(4);

// dd($footerColumnTwo = App\Models\Footer::find(3));

$phones = explode(', ', $setting->phone);
$phone1 = $phones[0] ?? '';
$phone2 = $phones[1] ?? '';
$phone3 = $phones[2] ?? '';
$phone4 = $phones[3] ?? '';

$websiteUrl = explode(', ', $setting->website_url);
$websiteUrl1 = $websiteUrl[0] ?? '';
$websiteUrl2 = $websiteUrl[1] ?? '';
?>
<!-- ============================== Footer ===================== -->
<footer>
    <div class="container">
        <div class="main_footer" style="padding-bottom: 50px;">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 about_gardener">
                    @php
                        if (Request::segment(1) == 'en') {
                            echo '<h5>Welcome to <span>Promotion Equitable Climate Actions</span> in Cambodia Project</h5>';
                            echo $setting->description;
                        } else {
                            echo '<h5>ស្វាគមន៍​មកកាន់ <span>ការលើកកម្ពស់សកម្មភាពអាកាសធាតុប្រកបដោយសមធម៌</span> គម្រោងនៅកម្ពុជា</h5>';
                            echo $settingkh->description;
                        }
                    @endphp
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 services">
                    @php
                        if (Request::segment(1) == 'en') {
                            echo '<h5>' . $footerColumnOne->title . '</h5>';
                            echo '<ul>';
                            foreach ($footerColumnOne->pages as $footerOne) {
                                echo '<li>';
                                echo '<a href="' . url($footerOne->link) . '" class="transition3s">';
                                echo '<i class="fa fa-check-square"></i>' . $footerOne->title;
                                echo '</a>';
                                echo '</li>';
                            }
                            echo '</ul>';
                        } else {
                            echo '<h5>' . $footerColumnFour->title . '</h5>';
                            echo '<ul>';
                            foreach ($footerColumnFour->pages as $footerFour) {
                                echo '<li>';
                                echo '<a href="' . url($footerFour->link) . '" class="transition3s">';
                                echo '<i class="fa fa-check-square"></i>' . $footerFour->title;
                                echo '</a>';
                                echo '</li>';
                            }
                            echo '</ul>';
                        }
                    @endphp
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 services">
                    @php
                        if (Request::segment(1) == 'en') {
                            echo '<h5>' . $footerColumnTwo->title . '</h5>';
                            echo '<ul>';
                            foreach ($footerColumnTwo->pages as $footerTwo) {
                                echo '<li>';
                                echo '<a href="' . url($footerTwo->link) . '" class="transition3s">';
                                echo '<i class="fa fa-check-square"></i>' . $footerTwo->title;
                                echo '</a>';
                                echo '</li>';
                            }
                            echo '</ul>';
                        } else {
                            echo '<h5>' . $footerColumnThree->title . '</h5>';
                            echo '<ul>';
                            foreach ($footerColumnThree->pages as $footerTwo) {
                                echo '<li>';
                                echo '<a href="' . url($footerTwo->link) . '" class="transition3s">';
                                echo '<i class="fa fa-check-square"></i>' . $footerTwo->title;
                                echo '</a>';
                                echo '</li>';
                            }
                            echo '</ul>';
                        }
                    @endphp
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 services">
                    @php
                        if (Request::segment(1) == 'en') {
                            echo '<h5>Oxfam Cambodia</h5>';
                            echo '<ul>';
                            echo '<li><i class="fa fa-map-marker"></i>&emsp;' . strip_tags($setting->address_site) . '</li>';
                            echo '<li><i class="fa fa-phone"></i>&emsp;Tel: ' . $phone1 . ' ' . $phone2 . '</li>';
                            echo '<li><i class="fa fa-envelope-o"></i>&emsp;<a href="' . $websiteUrl1 . '" class="transition3s">' . str_replace('https://', '', $websiteUrl1) . '</a></li>';
                            echo '</ul>';
                        } else {
                            echo '<h5>Oxfam កម្ពុជា</h5>';
                            echo '<ul>';
                            echo '<li><i class="fa fa-map-marker"></i>&emsp;' . strip_tags($settingkh->address_site) . '</li>';
                            echo '<li><i class="fa fa-phone"></i>&emsp;Tel: ' . $phone1 . ' ' . $phone2 . '</li>';
                            echo '<li><i class="fa fa-envelope-o"></i>&emsp;<a href="' . $websiteUrl1 . '" class="transition3s">' . str_replace('https://', '', $websiteUrl1) . '</a></li>';
                            echo '</ul>';
                        }
                    @endphp

                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 ministry_links">
                    @php
                        if (Request::segment(1) == 'en') {
                            echo '<h5>Ministry of Environment</h5>';
                            echo '<ul>';
                            echo '<li><i class="fa fa-map-marker"></i>&emsp;' . strip_tags($setting->address) . '</li>';
                            echo '<li><i class="fa fa-phone"></i>&emsp;Tel: ' . $phone3 . ' ' . $phone4 . '</li>';
                            echo '<li><i class="fa fa-envelope-o"></i>&emsp;<a href="' . $websiteUrl2 . '" class="transition3s">' . str_replace('https://', '', $websiteUrl2) . '</a></li>';
                            echo '</ul>';
                        } else {
                            echo '<h5>ក្រសួងបរិស្ថាន</h5>';
                            echo '<ul>';
                            echo '<li><i class="fa fa-map-marker"></i>&emsp;' . strip_tags($settingkh->address) . '</li>';
                            echo '<li><i class="fa fa-phone"></i>&emsp;Tel: ' . $phone3 . ' ' . $phone4 . '</li>';
                            echo '<li><i class="fa fa-envelope-o"></i>&emsp;<a href="' . $websiteUrl2 . '" class="transition3s">' . str_replace('https://', '', $websiteUrl2) . '</a></li>';
                            echo '</ul>';
                        }
                    @endphp
                </div>
            </div> <!-- /row -->
        </div> <!-- /main_footer -->
        <div class="bottom_footer">
            <div class="row">
                <div class="col-lg-6 col-md-8 col-sm-8 col-xs-8" style="padding-top: 20px;">
                    <div>
                        <ul style="display: flex;">
                            @foreach ($socials as $social)
                                <li><a href="{{ url($social->link) }}"><img
                                            src="{{ url('images/' . $social->image_icon) }}" alt=""
                                            style="height: 35px; height: 35px; padding-right: 7px;"></a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-4 col-xs-4">
                    <a href="#top" class="back_top"><i class="fa fa-chevron-up"></i></a>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    @if (Request::segment(1) == 'en')
                        <p style="color: #9e9e9e; font-size: small; text-align:center;">
                            {{ strip_tags($setting->copyright) }}
                        </p>
                    @else
                        <p style="color: #9e9e9e; font-size: small; text-align:center;">
                            {{ strip_tags($settingkh->copyright) }}
                        </p>
                    @endif


                </div>
            </div>
        </div> <!-- /bottom_footer -->
    </div> <!-- /container -->
</footer>

<!-- ============================== /Footer ===================== -->
