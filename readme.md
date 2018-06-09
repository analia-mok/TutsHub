# TutsHub 
_In Progress_
A coding tutorial website developed with Laravel 5.6 with Laravel Voyager as the admin.

## Project Setup
1. Clone or download this repo
2. Create a .env file using the .env.example file
3. From the root of this repo, run `composer install`
4. Generate a new app key by running `php artisan key:generate`
5. Create a virtual host pointing to the `public` directory
6. Create a MySQL database and fill in the appropriate environment variables
7. Import the the `tutshub.sql` file found under the `backups/` folder. Feel free to delete this directory and file afterwards.
8. Now running `php artisan server` should now allow you to go to http://localhost:8000/ or http://yourvhost/
9. Navigate to http://localhost:8000/admin or http://yourvhost/admin
10. You should be greeted by the voyager admin screen
11. Note: Images will look funky but we'll fix that in a few
12. The default credentials are `admin@admin.com` / `password`
13. Also provided are `swalsh@gmail.com` / `password` and `kmayer@gmail.com` / `password`, users with a custom `content editor` role
14. Once logged in, you should get a warning from Voyager about the missing symlink. Click the `fix it` button and the error should go away.
15. From here, upload the folder structure found in the provided `backups/public.tar.gzip` or `zip` file. Either replace the files found in your `/public/storage/app/public` folder or if that doesn't work, upload the files individually with their original names. (Sadly you will have to manually rename each file). If a user's profile avatar does not appear, go to Users, edit each user and re-assign their profile avater.
13. If you would like to continue on with this project and work with the sass files, run `npm install`. Once done, running any of the default yarn commands should work. See the `package.json` for available commands.

Happy dev-ing!