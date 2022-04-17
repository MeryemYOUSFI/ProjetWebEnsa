<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class DossiersPedagogique extends Model
{
    public function scopeCurrentUser($query)
    {
       
        return Auth::user()->hasRole('admin') ? $query : $query->where('id_user', Auth::user()->name);
       
    }

    public function save(array $options = [])
    {
        // If no owner has been assigned, assign the current user's id as the owner of the workstation
        if (!$this->id_user && Auth::user()) {
            $this->id_user = Auth::user()->name;
        }

        return parent::save();
    }
    public static function boot()
    {
      parent::boot();
  
      // over-ride the creating event
      static::creating(function($dossiers_pedagogique)
      {
       
        $dossiers_pedagogique->etat = 'en attente';
  
      });
    }
}
