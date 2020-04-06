
## REQUIREMENTS:

```
*PHP >= 7.2.5
*Composer
*Web server (XAMPP // LEMP Stack // MAMP // WAMP)
```

## INSTALLATION:

> 1. Install your favourite web server (XAMPP // LEMP Stack // MAMP // WAMP).
> 2. Install Composer.

- Once we install Composer, open the cmd or terminal and execute the command "composer" to see if we installed correctly.

## CREATE YOUR FIRST PROJECT:

> 1. Create the folder that we have the project.

> 2. Open the cmd or terminal, and execute the following command:

```
composer create-project --prefer-dist laravel/laravel name_of_project
```
*If you want to open the project in your browser with the URL: http://127.0.0.1:8000, execute the command:

```
php artisan serve
```

## CONFIGURATION

> 1. Open the terminal or CMD and execute the commands, to configure the name of your project inside the configuration files:

```
php artisan app:name name_of_project

```

> 2. Open the file inside of your project path "config/app.php", and modify:

```
'timezone' => 'UTC',

TO

'timezone' => 'YOUR_TIMEZONE',

(Select the timezone here and paste to 'YOUR_TIMEZONE': https://'www.php.net/manual/es/timezones.php')

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

'locale' => 'en',

TO

'locale' => 'es',

(Now create folder called "es" into "PATH_OF_YOUR_PROJECT/resources/lang/" and download the files in this repository 'https://github.com/caouecs/Laravel-lang/tree/master/src/es' to  "PATH_OF_YOUR_PROJECT/resources/lang/es/").

```

## OPTIONAL:

- Configure route (route is the path that laravel/your projects shows to the world). Go to "PATH_OF_YOUR_PROJECT/routes/web.php" and add or modify:

```
Route::get('/PATH', function () {
    return view('index.php');
});
```

#More info; https://laravel.com/docs/7.x#installation