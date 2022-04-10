## First Laravel Project

Getting Started

### Local Setup

0. Required:
    - php8.0
    - composer
    - mysql (or any DB supported by Laravel)
1. clone repositories

`git clone git@github.com:petrina/firstproject.git`

3. Create DataBase

I use mysql 

`mysql -u {DB_USERNAME} -p`

and 

`CREATE DATABASE {DB_DATABASE}`

You can use something else.

4. Fill Config

Fill next params in .env file:
    - DB_CONNECTION
    - DB_DATABASE
    - DB_USERNAME
    - DB_PASSWORD

and change 

`QUEUE_CONNECTION=database`

5. Migration

Fill DataBase next command:

`php artisan migrate`

### Started

To start web you need execute

`php artisan serve --port=8080`

To start worker execute

`php artisan queue:work`

### Using

Use some REST client (like Postman) you can use REST API requests to address

`http://localhost:8080/api/posts`

Use next address to put parsing in queue

`http://127.0.0.1:8080/setqueue`
