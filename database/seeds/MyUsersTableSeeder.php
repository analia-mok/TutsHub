<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\User;

class MyUsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(User::class, 50)->create();
    }
}
