<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Tutorial extends Model
{
  public function categories() {
    return $this->belongsToMany('App\Category', 'tutorial_category');
  }
}
