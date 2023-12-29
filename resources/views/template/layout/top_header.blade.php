<!-- ================ Top Header =================-->
<?php
$seg = Request()->segments();
$str_seg = '';
for ($i = 1; $i < count($seg); $i++) {
    $str_seg .= $seg[$i] . '/';
}
?>
<div class="top_header" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-8 col-sm-12 col-xs-12">
                    @php
                    if(Request::segment(1) == 'en') {
                        echo '<p>Welcome to <span>Promotion Equitable Climate Actions</span> in Cambodia Project</p>';
                    } else {
                        echo '<p>ស្វាគមន៍​មកកាន់ <span>ការលើកកម្ពស់សកម្មភាពអាកាសធាតុប្រកបដោយសមធម៌</span> គម្រោងនៅកម្ពុជា</p>';
                    }
                @endphp
            </div>
            <div class="col-lg-5 col-md-4 col-sm-12 col-xs-12 col-sm-12 col-xs-12">
                <ul style="margin: 0">
                    <li>
                        <a href="{{url('en/' . $str_seg)}}"><img style="display: inline-block; width: 20px;"
                                src="{{ asset('images/svgfolder/gb.svg') }}"></a>
                    </li>
                    <li>
                        <a href="{{url('kh/' . $str_seg)}}"><img style="display: inline-block; width: 20px;"
                                src="{{ asset('images/svgfolder/kh.svg') }}"></a>
                    </li>
                </ul>
            </div>
        </div> <!-- /row -->
    </div> <!-- /container -->
</div> <!-- /top_header -->

<!-- ================ /Top Header =================-->
