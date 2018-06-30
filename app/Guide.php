<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Guide extends Model
{
    use Resizable;

    public function author()
    {
        return $this->belongsTo(User::class);
    }

    public function tutorials()
    {
        return $this->hasMany(Tutorial::class);
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class, 'guide_category');
    }
}
