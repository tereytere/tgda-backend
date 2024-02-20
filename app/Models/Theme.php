<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UUID;


class Theme extends Model
{
    use HasFactory;
    use UUID;

    protected $guarded = ['id'];

    protected $fillable = ['name', 'posts', 'authors'];

    // Override the default primary key
    protected $primaryKey = 'id';

    // Define the data type of the primary key
    protected $keyType = 'string';

    // Disable auto-incrementing for primary key
    public $incrementing = false;

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'post_theme', 'theme_id', 'post_id');
    }

    public function authors()
    {
        return $this->belongsToMany(Author::class, 'author_theme', 'theme_id', 'author_id');
    }

}
