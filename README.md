# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# how its made 
running on rails 5.2.2 to create this project.  
on `rails s` come with issue 

* solve this by `gem 'sqlite3'` => `gem 'sqlite3', '< 1.4'` in the gem file  

add gem haml + simple_form  
```
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'simple_form', '~> 4.1'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
``` 

create model Pic for image  
`rails g model Pic title:string description:text`
`rake db:migrate`  

then create the controller for Pic, (controller is plural)  
`rails g controller Pics`  

create the view file for pics#index controller  
`touch app/views/pics/index.html.haml`  

create the routes for pics and the root route  
```
resources :pics
root "pics#index"
```  
