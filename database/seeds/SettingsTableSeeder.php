<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Setting::create([

            'site_name' => "Laravel's Blog",
            'address' => 'Russia, Petersburg',
            'contact_number' => '(949) 298-1903',
            'contact_email' => 'info@webfabricant.com'

        ]);
    }
}
