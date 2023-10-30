<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Footer extends Model
{
    use HasFactory;
    protected $table = 'footers';

    public function pages()
    {
        return $this->belongsToMany(Post::class, 'footer_pages', 'footer_id', 'page_id');
    }
}
