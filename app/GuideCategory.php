<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class GuideCategory extends Model
{
    use Searchable;
}
