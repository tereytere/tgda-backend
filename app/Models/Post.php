<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UUID;


class Post extends Model
{
    use HasFactory;
    use UUID;

    protected $guarded = ['id'];

    protected $fillable = ['title', 'body', 'type', 'url', 'image', 'author', 'language'];

    // Override the default primary key
    protected $primaryKey = 'id';

    // Define the data type of the primary key
    protected $keyType = 'string';

        // Cast themes field to JSON
        protected $casts = [
            'themes' => 'json', 
        ];
    
    // Disable auto-incrementing for primary key
    public $incrementing = false;

    public function author()
    {
        return $this->belongsTo(Author::class, 'author_id', 'id');
    }

    public function themes()
    {
        return $this->belongsToMany(Theme::class, 'post_theme', 'post_id', 'theme_id')->withTimestamps();
    }
}
