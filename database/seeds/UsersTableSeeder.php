<?php

use Illuminate\Database\Seeder;
use Faker\Provider\Lorem;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = App\User::create([

            'name' => 'Muhammad Usama',
            'email' => 'usamaalee786@gmail.com',
            'password' => bcrypt("useless123"),
            'admin' => 1

        ]);

        App\Profile::create([

            'user_id' => $user->id,
            'avatar' => 'uploads/avatars/1.png',
            'about' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis dolore soluta voluptates, accusantium sint cupiditate eius eligendi ducimus quasi modi aperiam esse inventore incidunt nihil veniam ullam vel necessitatibus delectus?',
            'facebook' => 'facebook.com',
            'youtube' => 'youtube.com'

        ]);
    }
}
