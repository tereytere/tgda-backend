<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\UUID;


class Book extends Model
{
    use HasFactory;
    use UUID;

    protected $guarded = ['id'];

    protected $fillable = ['title', 'description', 'type', 'url', 'themes', 'image', 'author', 'language'];

    // Override the default primary key
    protected $primaryKey = 'id';

    // Define the data type of the primary key
    protected $keyType = 'string';

    // Disable auto-incrementing for primary key
    public $incrementing = false;

    public function author()
    {
        return $this->belongsTo(Author::class, 'author_id', 'id');
    }

    public function themes()
    {
        return $this->belongsToMany(Theme::class, 'book_theme', 'book_id', 'theme_id');
    }

}
