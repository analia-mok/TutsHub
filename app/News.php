<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use Laravel\Scout\Searchable;

class News extends Model
{
    use Resizable;
    use Searchable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'slug', 'content', 'meta_title', 'meta_description', 'status', 'author_id', 'created_at', 'updated_at',
        'image', 'published_date',
    ];

    public function author()
    {
        return $this->belongsTo(User::class);
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
