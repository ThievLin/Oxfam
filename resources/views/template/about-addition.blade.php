
<?php $p= $cat->post->first() ?>
<div class="full_width_details_text container">
    <h6>{{$p->title}}</h6>
    <p>
    {!!$p->description!!}
    </p>
    
</div>
