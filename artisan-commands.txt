php artisan make:model Project -mcr
php artisan make:model Project --migration --controller --resource

php artisan make:controller UserController
php artisan make:controller UserController --resource
php artisan make:controller UserController --api

php artisan make:migration create_projects_table

php artisan make:command SendEmails --command=Command

php artisan db:seed
php artisan db:seed --class=PermissionsTableSeeder
