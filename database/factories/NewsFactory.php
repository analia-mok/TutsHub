<?php

use Faker\Generator as Faker;

$factory->define(App\News::class, function (Faker $faker) {

    $title = $faker->unique()->catchPhrase;

    $status_options = [ 'PUBLISHED', 'DRAFT', 'PENDING', ];

    return [
        'title'             => $title,
        'slug'              => str_slug( $title, '-' ),
        'content'           => $faker->paragraphs(rand(10, 20), true),
        'meta_title'        => $title,
        'meta_description'  => $faker->text(250),
        'status'            => $status_options[ rand(0, 2) ],
        'image'             => $faker->imageUrl(768, 520),
        'published_date'    => date("Y-m-d H:i:s"),
    ];
});
