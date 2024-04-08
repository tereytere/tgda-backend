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

    protected $fillable = ['name'];

    // Override the default primary key
    protected $primaryKey = 'id';

    // Define the data type of the primary key
    protected $keyType = 'string';

    // Disable auto-incrementing for primary key
    public $incrementing = false;

    // Define the relationship with posts
    public function posts()
    {
        return $this->belongsToMany(Post::class, 'post_theme', 'theme_id', 'post_id')->withTimestamps();
    }

    // Define the relationship with authors
    public function authors()
    {
        return $this->belongsToMany(Author::class, 'author_theme', 'theme_id', 'author_id')->withTimestamps();
    }

    // Method to fetch related posts for a theme
    public function getRelatedPosts()
    {
        return $this->posts;
    }

    // Method to fetch related authors for a theme
    public function getRelatedAuthors()
    {
        return $this->authors;
    }
}
