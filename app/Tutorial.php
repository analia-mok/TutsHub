<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Tutorial extends Model
{
  use Resizable;
  
  public function author(){
    return $this->belongsTo('App\User');
  }

  public function categories() {
    return $this->belongsToMany('App\Category', 'tutorial_category');
  }
}
