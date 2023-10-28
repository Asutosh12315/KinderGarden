<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChildrenInfo extends Model
{
    use HasFactory;

    protected $table = "children_infos";

    public $fillable = [

        'name',

        'dob',

        'class',      

        'address',
        
        'city',

        'state',

        'country',

        'photo',

        'zipcode'


    ];
}
