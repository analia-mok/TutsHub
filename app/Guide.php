<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;


class Guide extends Model
{
  use Resizable;
  
  public function author(){
    return $this->belongsTo('App\User');
  }

  public function tutorials() {
    return $this->hasMany('App\Tutorial');
  }
  
  public function categories() {
    return $this->belongsToMany('App\Category', 'guide_category');
  }
}
