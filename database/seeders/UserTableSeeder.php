<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $json = '[
            {"id":"1","email":"admin@mail.com","password":"$2y$12$tLZwwBMUSDW5aZcsxnzcrugdim99gyi5tZkzk6bj5Xc3BEx2e2MpW","role":"admin","remember_token":null,"created_at":"2024-09-29 22:07:57","updated_at":"2024-09-29 22:07:57"}
            ]';
        $data = json_decode($json, true);

        foreach ($data as $user) {
            User::updateOrCreate(
                ['id' => $user['id']],
                $user
            );
        }
    }
}