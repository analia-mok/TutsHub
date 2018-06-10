<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Tutorial extends Model
{

  public function author(){
    return $this->belongsTo('App\User');
  }

  public function categories() {
    return $this->belongsToMany('App\Category', 'tutorial_category');
  }
}
