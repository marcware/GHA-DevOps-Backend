<?php

namespace App;


use Illuminate\Database\Eloquent\Model;



class Book extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     *
     */
    //Atributos que pueden ser asignados de forma masiva
    protected $fillable = [
        'title', 'description', 'price', 'author_id',
    ];

}
