<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class PostThemeSeeder extends Seeder
{
    public function run()
    {
        $data = [

            ["post_id" => "0885f5b7-6dd9-4c14-aa18-d6a368982f49", "theme_id" => "1b09baf6-2eb7-42d6-bf1b-e34da736692b", "created_at" => "2024-09-29 20:20:19", "updated_at" => "2024-09-29 20:20:19"],
            ["post_id" => "0885f5b7-6dd9-4c14-aa18-d6a368982f49", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-09-29 20:20:19", "updated_at" => "2024-09-29 20:20:19"],
            ["post_id" => "0885f5b7-6dd9-4c14-aa18-d6a368982f49", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-09-29 20:20:19", "updated_at" => "2024-09-29 20:20:19"],
            ["post_id" => "0885f5b7-6dd9-4c14-aa18-d6a368982f49", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-09-29 20:20:19", "updated_at" => "2024-09-29 20:20:19"],
            ["post_id" => "37766245-9338-451e-87a8-bab140860070", "theme_id" => "1b09baf6-2eb7-42d6-bf1b-e34da736692b", "created_at" => "2024-04-09 12:25:29", "updated_at" => "2024-04-09 12:25:29"],
            ["post_id" => "37766245-9338-451e-87a8-bab140860070", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:25:29", "updated_at" => "2024-04-09 12:25:29"],
            ["post_id" => "37766245-9338-451e-87a8-bab140860070", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:25:29", "updated_at" => "2024-04-09 12:25:29"],
            ["post_id" => "4130fed5-2fa7-46e6-9e79-292b05225aca", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:25:47", "updated_at" => "2024-04-09 12:25:47"],
            ["post_id" => "4130fed5-2fa7-46e6-9e79-292b05225aca", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:25:47", "updated_at" => "2024-04-09 12:25:47"],
            ["post_id" => "4130fed5-2fa7-46e6-9e79-292b05225aca", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:25:47", "updated_at" => "2024-04-09 12:25:47"],
            ["post_id" => "4130fed5-2fa7-46e6-9e79-292b05225aca", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:25:47", "updated_at" => "2024-04-09 12:25:47"],
            ["post_id" => "4130fed5-2fa7-46e6-9e79-292b05225aca", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:25:47", "updated_at" => "2024-04-09 12:25:47"],
            ["post_id" => "560b08d9-12d0-46ed-b507-5e1647a73475", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:26:50", "updated_at" => "2024-04-09 12:26:50"],
            ["post_id" => "560b08d9-12d0-46ed-b507-5e1647a73475", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:26:50", "updated_at" => "2024-04-09 12:26:50"],
            ["post_id" => "560b08d9-12d0-46ed-b507-5e1647a73475", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:26:50", "updated_at" => "2024-04-09 12:26:50"],
            ["post_id" => "752f65f8-3c76-47ad-a34b-b8636a38b96f", "theme_id" => "52d09292-24a4-459a-8c7f-d2f3cc04f3a8", "created_at" => "2024-04-09 12:26:16", "updated_at" => "2024-04-09 12:26:16"],
            ["post_id" => "752f65f8-3c76-47ad-a34b-b8636a38b96f", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:26:16", "updated_at" => "2024-04-09 12:26:16"],
            ["post_id" => "752f65f8-3c76-47ad-a34b-b8636a38b96f", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:26:16", "updated_at" => "2024-04-09 12:26:16"],
            ["post_id" => "752f65f8-3c76-47ad-a34b-b8636a38b96f", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:26:16", "updated_at" => "2024-04-09 12:26:16"],
            ["post_id" => "7f2438fe-1cbb-48c9-abca-96f2e49d5da4", "theme_id" => "1b679138-269b-4eee-b168-995257bd7afa", "created_at" => "2024-06-23 18:41:09", "updated_at" => "2024-06-23 18:41:09"],
            ["post_id" => "7f2438fe-1cbb-48c9-abca-96f2e49d5da4", "theme_id" => "52d09292-24a4-459a-8c7f-d2f3cc04f3a8", "created_at" => "2024-06-23 18:41:09", "updated_at" => "2024-06-23 18:41:09"],
            ["post_id" => "7f2438fe-1cbb-48c9-abca-96f2e49d5da4", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-06-23 18:41:09", "updated_at" => "2024-06-23 18:41:09"],
            ["post_id" => "7f2438fe-1cbb-48c9-abca-96f2e49d5da4", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-06-23 18:41:09", "updated_at" => "2024-06-23 18:41:09"],
            ["post_id" => "7f2438fe-1cbb-48c9-abca-96f2e49d5da4", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-06-23 18:41:09", "updated_at" => "2024-06-23 18:41:09"],
            ["post_id" => "8a1b1658-259c-40fc-8969-3b72ddf3a7e1", "theme_id" => "1f776ade-3146-4694-bdb2-a57f474e8783", "created_at" => "2024-06-23 18:34:20", "updated_at" => "2024-06-23 18:34:20"],
            ["post_id" => "8a1b1658-259c-40fc-8969-3b72ddf3a7e1", "theme_id" => "2a361483-3e3b-4c83-a85e-6c8465bbdeaf", "created_at" => "2024-06-23 18:34:20", "updated_at" => "2024-06-23 18:34:20"],
            ["post_id" => "8a1b1658-259c-40fc-8969-3b72ddf3a7e1", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-06-23 18:34:20", "updated_at" => "2024-06-23 18:34:20"],
            ["post_id" => "8a1b1658-259c-40fc-8969-3b72ddf3a7e1", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-06-23 18:34:20", "updated_at" => "2024-06-23 18:34:20"],
            ["post_id" => "8a1b1658-259c-40fc-8969-3b72ddf3a7e1", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-06-23 18:34:20", "updated_at" => "2024-06-23 18:34:20"],
            ["post_id" => "a62deeb5-0ad0-4c8c-96b3-4ceba2917950", "theme_id" => "1b09baf6-2eb7-42d6-bf1b-e34da736692b", "created_at" => "2024-04-09 12:27:06", "updated_at" => "2024-04-09 12:27:06"],
            ["post_id" => "a62deeb5-0ad0-4c8c-96b3-4ceba2917950", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:27:06", "updated_at" => "2024-04-09 12:27:06"],
            ["post_id" => "a62deeb5-0ad0-4c8c-96b3-4ceba2917950", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:27:06", "updated_at" => "2024-04-09 12:27:06"],
            ["post_id" => "a62deeb5-0ad0-4c8c-96b3-4ceba2917950", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:27:06", "updated_at" => "2024-04-09 12:27:06"],
            ["post_id" => "a62deeb5-0ad0-4c8c-96b3-4ceba2917950", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:27:06", "updated_at" => "2024-04-09 12:27:06"],
            ["post_id" => "a62deeb5-0ad0-4c8c-96b3-4ceba2917950", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:27:06", "updated_at" => "2024-04-09 12:27:06"],
            ["post_id" => "aa7e52d9-40c5-4d71-87b6-3fb01b9db1cc", "theme_id" => "52d09292-24a4-459a-8c7f-d2f3cc04f3a8", "created_at" => "2024-06-23 18:46:18", "updated_at" => "2024-06-23 18:46:18"],
            ["post_id" => "aa7e52d9-40c5-4d71-87b6-3fb01b9db1cc", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-06-23 18:46:18", "updated_at" => "2024-06-23 18:46:18"],
            ["post_id" => "aa7e52d9-40c5-4d71-87b6-3fb01b9db1cc", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-06-23 18:46:18", "updated_at" => "2024-06-23 18:46:18"],
            ["post_id" => "aa7e52d9-40c5-4d71-87b6-3fb01b9db1cc", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-06-23 18:46:18", "updated_at" => "2024-06-23 18:46:18"],
            ["post_id" => "aa7e52d9-40c5-4d71-87b6-3fb01b9db1cc", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-06-23 18:46:18", "updated_at" => "2024-06-23 18:46:18"],
            ["post_id" => "abf68b19-5488-4119-bd48-fe661b72f2cc", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:26:00", "updated_at" => "2024-04-09 12:26:00"],
            ["post_id" => "abf68b19-5488-4119-bd48-fe661b72f2cc", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:26:00", "updated_at" => "2024-04-09 12:26:00"],
            ["post_id" => "cea29889-bc1c-471e-904f-aaf7b684e963", "theme_id" => "1b09baf6-2eb7-42d6-bf1b-e34da736692b", "created_at" => "2024-04-09 12:26:33", "updated_at" => "2024-04-09 12:26:33"],
            ["post_id" => "cea29889-bc1c-471e-904f-aaf7b684e963", "theme_id" => "52d09292-24a4-459a-8c7f-d2f3cc04f3a8", "created_at" => "2024-04-09 12:26:33", "updated_at" => "2024-04-09 12:26:33"],
            ["post_id" => "cea29889-bc1c-471e-904f-aaf7b684e963", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:26:33", "updated_at" => "2024-04-09 12:26:33"],
            ["post_id" => "cea29889-bc1c-471e-904f-aaf7b684e963", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-04-09 12:26:33", "updated_at" => "2024-04-09 12:26:33"],
            ["post_id" => "cea29889-bc1c-471e-904f-aaf7b684e963", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:26:33", "updated_at" => "2024-04-09 12:26:33"],
            ["post_id" => "cea29889-bc1c-471e-904f-aaf7b684e963", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-04-09 12:26:33", "updated_at" => "2024-04-09 12:26:33"],
            ["post_id" => "e09182a7-767b-43ad-8620-71a53d9347f8", "theme_id" => "1b09baf6-2eb7-42d6-bf1b-e34da736692b", "created_at" => "2024-06-23 18:19:58", "updated_at" => "2024-06-23 18:19:58"],
            ["post_id" => "e09182a7-767b-43ad-8620-71a53d9347f8", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-06-23 18:19:58", "updated_at" => "2024-06-23 18:19:58"],
            ["post_id" => "e09182a7-767b-43ad-8620-71a53d9347f8", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-06-23 18:19:58", "updated_at" => "2024-06-23 18:19:58"],
            ["post_id" => "e09182a7-767b-43ad-8620-71a53d9347f8", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-06-23 18:19:58", "updated_at" => "2024-06-23 18:19:58"],
            ["post_id" => "e1c19025-38c0-4d5a-b6a7-852b48c2f5ad", "theme_id" => "1b09baf6-2eb7-42d6-bf1b-e34da736692b", "created_at" => "2024-04-09 12:25:01", "updated_at" => "2024-04-09 12:25:01"],
            ["post_id" => "e1c19025-38c0-4d5a-b6a7-852b48c2f5ad", "theme_id" => "3cc7e632-74ff-41f9-b7d0-2936ed4b7480", "created_at" => "2024-04-09 12:25:01", "updated_at" => "2024-04-09 12:25:01"],
            ["post_id" => "e1c19025-38c0-4d5a-b6a7-852b48c2f5ad", "theme_id" => "54331009-2542-4923-8941-2433d51c835f", "created_at" => "2024-04-09 12:25:01", "updated_at" => "2024-04-09 12:25:01"],
            ["post_id" => "e1c19025-38c0-4d5a-b6a7-852b48c2f5ad", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-04-09 12:25:01", "updated_at" => "2024-04-09 12:25:01"],
            ["post_id" => "e1c19025-38c0-4d5a-b6a7-852b48c2f5ad", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-04-09 12:25:01", "updated_at" => "2024-04-09 12:25:01"],
            ["post_id" => "ec99191a-dd69-4dd3-b9bf-a669d970846a", "theme_id" => "71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db", "created_at" => "2024-06-23 18:28:14", "updated_at" => "2024-06-23 18:28:14"],
            ["post_id" => "ec99191a-dd69-4dd3-b9bf-a669d970846a", "theme_id" => "79a08877-7ca8-40f5-9c4f-c9459fdb899f", "created_at" => "2024-06-23 18:28:14", "updated_at" => "2024-06-23 18:28:14"],
            ["post_id" => "ec99191a-dd69-4dd3-b9bf-a669d970846a", "theme_id" => "7d0d3a4b-70b5-4443-b374-fe9884047866", "created_at" => "2024-06-23 18:28:14", "updated_at" => "2024-06-23 18:28:14"],
            ["post_id" => "ec99191a-dd69-4dd3-b9bf-a669d970846a", "theme_id" => "ef4af49b-8f56-425c-832b-790bf026467a", "created_at" => "2024-06-23 18:28:14", "updated_at" => "2024-06-23 18:28:14"]
        ];

        DB::table('post_theme')->insert($data);
    }
}