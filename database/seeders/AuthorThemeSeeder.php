<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class AuthorThemeSeeder extends Seeder
{
    public function run()
    {
        $data = [
            ["author_id" => "030b4c4a-7181-4984-bb52-d42e27bac320", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:23:36", "updated_at" => "2024-04-09 12:23:36"],
            ["author_id" => "12e8a3e3-193d-4a93-8e9d-10d56a074947", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:22:25", "updated_at" => "2024-04-09 12:22:25"],
            ["author_id" => "12e8a3e3-193d-4a93-8e9d-10d56a074947", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:22:25", "updated_at" => "2024-04-09 12:22:25"],
            ["author_id" => "12e8a3e3-193d-4a93-8e9d-10d56a074947", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:22:25", "updated_at" => "2024-04-09 12:22:25"],
            ["author_id" => "12e8a3e3-193d-4a93-8e9d-10d56a074947", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:22:25", "updated_at" => "2024-04-09 12:22:25"],
            ["author_id" => "12e8a3e3-193d-4a93-8e9d-10d56a074947", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:22:25", "updated_at" => "2024-04-09 12:22:25"],
            ["author_id" => "1c4483d4-28dc-4e41-9bbd-5990345acb8b", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:23:11", "updated_at" => "2024-04-09 12:23:11"],
            ["author_id" => "1c4483d4-28dc-4e41-9bbd-5990345acb8b", "theme_id" => "6ba419b0-109f-4be3-b7f4-bedb444f6faf", "created_at" => "2024-04-09 12:23:11", "updated_at" => "2024-04-09 12:23:11"],
            ["author_id" => "1c4483d4-28dc-4e41-9bbd-5990345acb8b", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:23:11", "updated_at" => "2024-04-09 12:23:11"],
            ["author_id" => "1f26f04c-3890-47f7-b98d-2765dc14c55e", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:23:45", "updated_at" => "2024-04-09 12:23:45"],
            ["author_id" => "1f26f04c-3890-47f7-b98d-2765dc14c55e", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:23:45", "updated_at" => "2024-04-09 12:23:45"],
            ["author_id" => "55b29068-3e97-4d0f-b1d4-4006c31c2819", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:22:50", "updated_at" => "2024-04-09 12:22:50"],
            ["author_id" => "55b29068-3e97-4d0f-b1d4-4006c31c2819", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:22:50", "updated_at" => "2024-04-09 12:22:50"],
            ["author_id" => "55b29068-3e97-4d0f-b1d4-4006c31c2819", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:22:50", "updated_at" => "2024-04-09 12:22:50"],
            ["author_id" => "55b29068-3e97-4d0f-b1d4-4006c31c2819", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:22:50", "updated_at" => "2024-04-09 12:22:50"],
            ["author_id" => "58491205-7c12-4b61-81cb-d4cfac79483b", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:24:08", "updated_at" => "2024-04-09 12:24:08"],
            ["author_id" => "58491205-7c12-4b61-81cb-d4cfac79483b", "theme_id" => "6ba419b0-109f-4be3-b7f4-bedb444f6faf", "created_at" => "2024-04-09 12:24:08", "updated_at" => "2024-04-09 12:24:08"],
            ["author_id" => "58491205-7c12-4b61-81cb-d4cfac79483b", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:24:08", "updated_at" => "2024-04-09 12:24:08"],
            ["author_id" => "58491205-7c12-4b61-81cb-d4cfac79483b", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:24:08", "updated_at" => "2024-04-09 12:24:08"],
            ["author_id" => "5f12cf40-8d27-4f48-b947-b07ce52880a9", "theme_id" => "1b679138-269b-4eee-b168-995257bd7afa", "created_at" => "2024-04-09 12:23:00", "updated_at" => "2024-04-09 12:23:00"],
            ["author_id" => "5f12cf40-8d27-4f48-b947-b07ce52880a9", "theme_id" => "52d09292-24a4-459a-8c7f-d2f3cc04f3a8", "created_at" => "2024-04-09 12:23:00", "updated_at" => "2024-04-09 12:23:00"],
            ["author_id" => "5f12cf40-8d27-4f48-b947-b07ce52880a9", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:23:00", "updated_at" => "2024-04-09 12:23:00"],
            ["author_id" => "5f12cf40-8d27-4f48-b947-b07ce52880a9", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:23:00", "updated_at" => "2024-04-09 12:23:00"],
            ["author_id" => "c650c571-c1ec-45b8-a3a1-8ff0c161e138", "theme_id" => "6ba419b0-109f-4be3-b7f4-bedb444f6faf", "created_at" => "2024-04-09 12:22:11", "updated_at" => "2024-04-09 12:22:11"],
            ["author_id" => "c650c571-c1ec-45b8-a3a1-8ff0c161e138", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:22:11", "updated_at" => "2024-04-09 12:22:11"],
            ["author_id" => "c650c571-c1ec-45b8-a3a1-8ff0c161e138", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:22:11", "updated_at" => "2024-04-09 12:22:11"],
            ["author_id" => "cd2975af-dcf9-484e-84c9-089b02e38949", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:23:57", "updated_at" => "2024-04-09 12:23:57"],
            ["author_id" => "cd2975af-dcf9-484e-84c9-089b02e38949", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:23:57", "updated_at" => "2024-04-09 12:23:57"],
            ["author_id" => "cd2975af-dcf9-484e-84c9-089b02e38949", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:23:57", "updated_at" => "2024-04-09 12:23:57"],
            ["author_id" => "db0c1471-4620-4a0a-8ea7-58e74effdb69", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:22:37", "updated_at" => "2024-04-09 12:22:37"],
            ["author_id" => "db0c1471-4620-4a0a-8ea7-58e74effdb69", "theme_id" => "6ba419b0-109f-4be3-b7f4-bedb444f6faf", "created_at" => "2024-04-09 12:22:37", "updated_at" => "2024-04-09 12:22:37"],
            ["author_id" => "db0c1471-4620-4a0a-8ea7-58e74effdb69", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:22:37", "updated_at" => "2024-04-09 12:22:37"],
            ["author_id" => "db0c1471-4620-4a0a-8ea7-58e74effdb69", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:22:37", "updated_at" => "2024-04-09 12:22:37"],
            ["author_id" => "e0da729b-5e05-43c3-a09f-19d909faa25e", "theme_id" => "1f776ade-3146-4694-bdb2-a57f474e8783", "created_at" => "2024-04-09 12:21:58", "updated_at" => "2024-04-09 12:21:58"],
            ["author_id" => "e0da729b-5e05-43c3-a09f-19d909faa25e", "theme_id" => "2a361483-3e3b-4c83-a85e-6c8465bbdeaf", "created_at" => "2024-04-09 12:21:58", "updated_at" => "2024-04-09 12:21:58"],
            ["author_id" => "e0da729b-5e05-43c3-a09f-19d909faa25e", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:21:58", "updated_at" => "2024-04-09 12:21:58"],
            ["author_id" => "e0da729b-5e05-43c3-a09f-19d909faa25e", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:21:58", "updated_at" => "2024-04-09 12:21:58"],
            ["author_id" => "e0da729b-5e05-43c3-a09f-19d909faa25e", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:21:58", "updated_at" => "2024-04-09 12:21:58"],
            ["author_id" => "e1f26919-f377-491c-be1f-cfdb5d603642", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:23:23", "updated_at" => "2024-04-09 12:23:23"],
            ["author_id" => "e1f26919-f377-491c-be1f-cfdb5d603642", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:23:23", "updated_at" => "2024-04-09 12:23:23"],
            ["author_id" => "e1f26919-f377-491c-be1f-cfdb5d603642", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:23:23", "updated_at" => "2024-04-09 12:23:23"],
            ["author_id" => "e1f26919-f377-491c-be1f-cfdb5d603642", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:23:23", "updated_at" => "2024-04-09 12:23:23"],
            ["author_id" => "f1506ee9-7002-41ec-85a3-d78dab6ab2e9", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:24:21", "updated_at" => "2024-04-09 12:24:21"],
            ["author_id" => "f1506ee9-7002-41ec-85a3-d78dab6ab2e9", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:24:21", "updated_at" => "2024-04-09 12:24:21"],
            ["author_id" => "f1506ee9-7002-41ec-85a3-d78dab6ab2e9", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:24:21", "updated_at" => "2024-04-09 12:24:21"],
            ["author_id" => "f1506ee9-7002-41ec-85a3-d78dab6ab2e9", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:24:21", "updated_at" => "2024-04-09 12:24:21"],
            ["author_id" => "f1506ee9-7002-41ec-85a3-d78dab6ab2e9", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:24:21", "updated_at" => "2024-04-09 12:24:21"],
            ["author_id" => "f1506ee9-7002-41ec-85a3-d78dab6ab2e9", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:24:21", "updated_at" => "2024-04-09 12:24:21"]
        ];

        DB::table('author_theme')->insert($data);
    }
}