<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(TCG\Voyager\Models\User::class, function (Faker $faker) {

    $user_password_log = fopen('seeded_users.txt', 'a') or die('Unable to open file');
    
    $password = str_random(10);
    $user_name = $faker->name;
    $user_email = $faker->unique()->safeEmail;

    $entry = $user_name . "\t" . $user_email . "\t" . $password . "\n";
    fwrite($user_password_log, $entry);

    fclose($user_password_log);

    return [
        'name' => $user_name,
        'email' => $user_email,
        'avatar' => 'users/default.png',
        'password' => bcrypt($password), // secret
        'remember_token' => str_random(60),
        'role_id'  => rand(2, 3), // Choose between a normal user and a content editor
    ];
});
