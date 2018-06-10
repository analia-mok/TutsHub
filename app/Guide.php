<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Guide extends Model
{

  public function tutorials() {
    return $this->hasMany('App\Tutorial');
  }
  
  public function categories() {
    return $this->belongsToMany('App\Category', 'guide_category');
  }
}
