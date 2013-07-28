## Terminal Commands
* cd = change directory
* subl . = Open current directory in sublime

## Rails Commands
* rails new blog -d postgresql --skip-test-unit # (New rails project called blog, with postgres db and no testunit)
* rails g model Post title body:text published:boolean (to create a model called post with a string title, and text body and published boolean)
* rails g controller post (to create a controller to handle posts)

## Rails routes File
* You can add resource routes to your config/routes.rb file
 * for example resources :posts (for Restful [CRUD] behaviour for a post controller)

## To install new gems
* Add new gems to gemfile
* Run bundle install from the terminal

## Setup pow for new rails app called blog in rails_projects directory
* cd ~/.pow
* ln -s /Users/shane/rails_projects/blog

## Testing
* bundle exec rspec
* or bundle exec guard (if guard is installed)
* Ctrl+C to force quit guard

## Git and Github
* git init (initialises a new git repository in the current directory)
* git add . (adds all files to the repository)
 * or git add /path/to/some/file.rb (if you dont want to add everything at the same time)
* git commit -am "Some Message Here" (commits all files -a with the -m message "Some Message Here")
* git push (pushes all files to github)

## Databases
First start postgres (startpost) then update database.yml with correct details!!!!!
* To start postgres server startpost, to stop stoppost, to restart restartpost
* rake db:create
* rake db:migrate (do this for new projects and after generating models/migrations)
* rake db:test:prepare (this updates the test database, do this after migrations!!)