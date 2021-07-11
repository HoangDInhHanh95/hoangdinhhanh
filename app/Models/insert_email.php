<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class insert_email extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $fillable = [
       'id',
       'email_name'
    ];
    protected $primarykey ='id';
    protected $table = 'tbl_get_email'; 
}
