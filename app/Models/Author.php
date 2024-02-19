<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $fillable = ['name', 'image', 'posts', 'books', 'youtube', 'instagram', 'webpage', 'podcast'];

    // Override the default primary key
    protected $primaryKey = 'id';

    // Define the data type of the primary key
    protected $keyType = 'string';

    // Disable auto-incrementing for primary key
    public $incrementing = false;

    public function posts()
    {
        return $this->hasMany(Post::class, 'post_id', 'id');
    }
}
