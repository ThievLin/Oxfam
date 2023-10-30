<?php
function display_menu($parent_id = 0)
{
    // Get All Menu
    $menu = App\Models\Menu::where('parent_id', $parent_id)
        ->where('status', 1)
        ->orderBy('ordering')
        ->get();

    foreach ($menu as $key => $val) {
        $sub_menu = App\Models\Menu::where('parent_id', $val->id)
            ->where('status', 1)
            ->orderBy('ordering')
            ->get();

        $url = url($val->link);
        $url_current = Request::segment(1);
        // Multiple Icon
        $icon = explode(', ', $val->modul_class);
        if (count($icon) > 1) {
            $icon = '<i class="' . $icon[0] . '" id="tree"></i><i class="' . $icon[1] . '" id="trees"></i>';
        } else {
            $icon = '<i class="' . $val->modul_class . '"></i>';
        }

        if (count($sub_menu) > 0) {
            $url = url($val->link);
            echo '<li class="sub_dropdown">';
            echo '<a class="transition-ease" href="' . $url . '">' . $icon . ' ' . $val->name . '</a>';
            echo '<ul class="sub_menu">';
            foreach ($sub_menu as $s) {

                $sub_url = url( $s->link);
                echo '<li><a href="' . $sub_url . '"><i class="' . $s->modul_class . '"></i>' . ' ' . $s->name . '</a></li>';
            }
            echo '</ul>';

            echo '</li>';
        } else {
            echo '<li><a class="transition-ease" <a  href="' . $url . '"><i class="' . $val->modul_class . '"></i> ' . $val->name . '</a></li>';
        }
    }
}
?>

<?php $setting = App\Models\Setting::select('phone')->first(); ?>

<!-- ================================ Menu ============================== -->
<div class="main_menu menu_fixed">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <nav class="navbar navbar-default">

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse flt_left" id="navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <?php display_menu(); ?>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <p class="navbar-text flt_left">
                        <a href="tel:+(+855) 23 885 412" class="transition4s"><i class="fa fa-phone"></i>
                            {{ $setting->phone }}
                        </a>
                    </p>
                </nav> <!-- /navbar-default -->
            </div>
        </div> <!-- /row -->
    </div> <!-- /container -->
</div> <!-- /main_menu -->
<!-- ================================ /Menu ============================== -->
