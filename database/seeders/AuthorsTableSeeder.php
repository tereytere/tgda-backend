<?php

use Illuminate\Database\Seeder;
use App\Models\Author;

class AuthorsTableSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    // Read JSON data from the exported file
    $json = file_get_contents(database_path('json/authors.json'));
    $data = json_decode($json, true);

    // Insert authors into the database
    foreach ($data as $authorData) {
      Author::create($authorData);
    }
  }
}
