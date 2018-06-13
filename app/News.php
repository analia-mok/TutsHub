<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class News extends Model
{
  use Resizable;

  public function author(){
    return $this->belongsTo(User::class);
  }
    
}
