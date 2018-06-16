# TutsHub 
_In Progress_
A coding tutorial website developed with Laravel 5.6 with Laravel Voyager as the admin.
Overall, a project to test all things Laravel.

## Project Setup
1. Clone or download this repo
2. Create a .env file using the .env.example file
3. From the root of this repo, run `composer install`
4. Generate a new app key by running `php artisan key:generate`
5. Create a virtual host pointing to the `public` directory
6. Create a MySQL database and fill in the appropriate environment variables
7. Import the the `tutshub.sql` file found under the `backups/` folder.
8. Now running `php artisan server` should now allow you to go to http://localhost:8000/ or http://yourvhost/
9. Navigate to http://localhost:8000/admin or http://yourvhost/admin
10. You should be greeted by the voyager admin screen
11. Note: Images will look funky but we'll fix that in a few
12. The default credentials are `admin@admin.com` / `password`
13. Also provided are `swalsh@gmail.com` / `password` and `kmayer@gmail.com` / `password`, users with a custom `content editor` role
14. Once logged in, you should get a warning from Voyager about the missing symlink. Click the `fix it` button and the error should go away.
15. From here, upload the folder structure found in the provided `backups/storage.tar.gzip` or `zip` file. Replace the files found in your `public/storage/` folder and your `storage/app/public` folder (Sadly you will have to manually rename each file). If a user's profile avatar does not appear, go to Users, edit each user and re-assign their profile avatar. Feel free to delete the backups directory once everything is working
13. If you would like to continue on with this project and work with the sass files, run `npm install`. Once done, running any of the default yarn commands should work. See the `package.json` for available commands.

Happy dev-ing!

## Project Structure (Work In Progress)
* Widgets can be found at `app/Widgets`
* Widget images are stored in `public/images`

## Provided Seeders and Corresponding Factories
* `MyUsersSeeder` - Creates 50 random instances of the `TCG\Voyager\Models\User`
* `UserFactory` - In addition to defining a new User instance, the factory will also write to a new `seeded_users.txt` file so that you may log in with any of the newly created users. This file should remain in the `.gitignore` file.

## Extra Commands

`php artisan make:vwidget widget_name model_name` - A quick command for generating the voyager widget boilerplate. Not 100% perfect but does the job. You will have to manually add the widget to your voyager.config file

* `widget_name` - Name of widget. Can include the 'Dimmer' or 'Widget' prefix. Just note that "widget" will appear in some of the description text. Easily editable
* `model_name` - _Just_ the name of the model. Assumes that model is using the default namespace `\App\`.
* Will be prompted for which voyager icon to use on the widget. Defaults to `voyager-helm`
* Also will set a default.jpg for the widget's background

__Read More__ about this project's roadmap and how to further customize voyager in the [wiki](https://github.com/AnaliaMok/TutsHub.wiki.git)
