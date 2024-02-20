<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UUID;

class Author extends Model
{
    use HasFactory;
    use UUID;

    protected $guarded = ['id'];

    protected $fillable = ['name', 'image', 'themes', 'posts', 'youtube', 'instagram', 'webpage', 'podcast', 'language'];

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

    public function themes()
    {
        return $this->belongsToMany(Theme::class, 'author_theme', 'author_id', 'theme_id');
    }

}
