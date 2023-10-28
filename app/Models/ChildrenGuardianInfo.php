<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChildrenGuardianInfo extends Model
{
    use HasFactory;

    protected $table = "children_guardian_infos";

    public $fillable = [

        'person_name',

        'relation',

        'contact_no',      

        'children_id',
        
        

    ];
}
