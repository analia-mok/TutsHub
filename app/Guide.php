<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use Laravel\Scout\Searchable;

class Guide extends Model
{
    use Resizable;
    use Searchable;

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

    /**
     * Method used by Scount to conditionally determine if a record
     * is searchabl
     *
     * @return boolean
     */
    public function shouldBeSearchable()
    {
        return $this->status === 'PUBLISHED';
    }
}
