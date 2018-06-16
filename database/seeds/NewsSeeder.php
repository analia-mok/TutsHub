<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\News::class, 12)->create()->each(function($news){
            // Grab Content Editor Role
            $role = Role::where('name', 'content editor')->firstOrFail();

            // Find a user with content editor permision
            $user_id = User::where('role_id', $role->id)->get()->random()->id;
            $news->author_id = $user_id;
            $news->save();
        });
    }
}
