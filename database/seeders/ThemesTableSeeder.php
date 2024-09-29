<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Theme;

class ThemesTableSeeder extends Seeder
{
    public function run()
    {
        $json = '[
        {"id":"1b09baf6-2eb7-42d6-bf1b-e34da736692b","name":"salud","created_at":"2024-04-09 12:20:43","updated_at":"2024-04-09 12:20:43"},
        {"id":"1b679138-269b-4eee-b168-995257bd7afa","name":"ayuda","created_at":"2024-04-09 12:20:27","updated_at":"2024-04-09 12:20:27"},
        {"id":"1f776ade-3146-4694-bdb2-a57f474e8783","name":"belleza","created_at":"2024-04-09 12:19:45","updated_at":"2024-04-09 12:19:45"},
        {"id":"2a361483-3e3b-4c83-a85e-6c8465bbdeaf","name":"moda","created_at":"2024-04-09 12:20:01","updated_at":"2024-04-09 12:20:01"},
        {"id":"3cc7e632-74ff-41f9-b7d0-2936ed4b7480","name":"investigación","created_at":"2024-04-09 12:20:14","updated_at":"2024-04-09 12:20:14"},
        {"id":"52d09292-24a4-459a-8c7f-d2f3cc04f3a8","name":"animales","created_at":"2024-04-09 12:20:55","updated_at":"2024-04-09 12:20:55"},
        {"id":"54331009-2542-4923-8941-2433d51c835f","name":"alimentación","created_at":"2024-04-09 12:20:08","updated_at":"2024-04-09 12:20:08"},
        {"id":"6ba419b0-109f-4be3-b7f4-bedb444f6faf","name":"crianza","created_at":"2024-04-09 12:20:36","updated_at":"2024-04-09 12:20:36"},
        {"id":"71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db","name":"veganismo","created_at":"2024-04-09 12:19:37","updated_at":"2024-04-09 12:19:37"},
        {"id":"79a08877-7ca8-40f5-9c4f-c9459fdb899f","name":"medioambiente","created_at":"2024-04-09 12:19:53","updated_at":"2024-04-09 12:19:53"},
        {"id":"7d0d3a4b-70b5-4443-b374-fe9884047866","name":"sostenibilidad","created_at":"2024-04-09 12:20:49","updated_at":"2024-04-09 12:20:49"},
        {"id":"ef4af49b-8f56-425c-832b-790bf026467a","name":"activismo","created_at":"2024-04-09 12:20:21","updated_at":"2024-04-09 12:20:21"}
        ]';
        $data = json_decode($json, true);

        foreach ($data as $theme) {
            Theme::updateOrCreate(
                ['id' => $theme['id']],
                $theme
            );
        }
    }
}