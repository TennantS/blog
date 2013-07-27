## Things I learned
* cd = change directory
* ~ = home directory
* subl = Open Sublime
* subl . = Open current directory in sublime
* rails new blog -d postgresql --skip-test-unit # (New rails project called blog, with postgres db and no testunit)
* To start postgres server startpost, to stop stoppost, to restart restartpost

## Setup pow for new rails app called blog in rails_projects directory
* cd ~/.pow
* ln -s /Users/shane/rails_projects/blog

## To install new gems
* Add new gems to gemfile
* Run bundle install from the terminal

## Github stuff
* git init (initialises a new git repository in the current directory)
* git add . (adds all files to the repository)
* git commit -am "Some Message Here" (commits all files -a with the -m message "Some Message Here")
* git push (pushes all files to github)

## Creating a new database
First start postgres (startpost) then update database.yml with correct details!!!!!
* rake db:create
* rake db:migrate (do this for new projects and after generating models/migrations)
* rake db:test:prepare (this updates the test database, do this after migrations!!)