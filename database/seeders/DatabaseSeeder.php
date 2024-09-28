<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(ThemesTableSeeder::class);
        $this->call(AuthorsTableSeeder::class);
        $this->call(AuthorThemeSeeder::class);
        $this->call(PostsTableSeeder::class);
        $this->call(PostThemeSeeder::class);
    }
}
