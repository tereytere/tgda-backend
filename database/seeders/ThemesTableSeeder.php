<?php

use Illuminate\Database\Seeder;
use App\Models\Theme;

class ThemesTableSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    // Read JSON data from the exported file
    $json = file_get_contents(database_path('json/themes.json'));
    $data = json_decode($json, true);

    // Insert themes into the database
    foreach ($data as $themeData) {
      // Since 'posts' and 'authors' are JSON fields, you may need to decode them as well
      $themeData['posts'] = json_decode($themeData['posts'], true);
      $themeData['authors'] = json_decode($themeData['authors'], true);
      Theme::create($themeData);
    }
  }
}
