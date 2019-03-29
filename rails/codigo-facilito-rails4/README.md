# codigo-facilito-rails4
This directory is a collection of code from the Youtube playlist from learn the Ruby on Rails framework 4. The aims of the course is to build a professional blog.

## Want to try the course?
Feel free to visit [codigofacilito](https://www.youtube.com/watch?v=LMD3P97gXa0&list=PLpOqH6AE0tNiQ-ofrDlbAUSc1r67r_AWv&index=1) and subscribe on his Youtube channel.

## ¿Por qué Ruby on Rails?
* És escrito en Ruby  
* Dart SASS, CoffeScript, HAML, etc. son nativos de Rails  
* ActiveRecord (nada de SQL)  
* Usa MVC (promueve buenas prácticas de desarrollo)  
* Comunidad fuerte  
* Es un framework probado  
* Muchas startups usan Rails  

## Configuración
```bash
cd /home/bode/Codes/03-Git/learnPath_Ruby/rails/codigo-facilito-rails4/RoR_Blog_101

sudo gem install rails

rails new blog-do-bode

cd blog-do-bode

rails server
```

## Error 
```
LoadError: Error loading the 'sqlite3' Active Record adapter.
Missing a gem it depends on? can't activate sqlite3 (~> 1.3.6),
already activated sqlite3-1.4.0. Make sure all dependencies are added to Gemfile.
```

If you Google for it you will find [this](https://github.com/rails/rails/issues/35153) and [that](https://stackoverflow.com/questions/54527277/cant-activate-sqlite3-1-3-6-already-activated-sqlite3-1-4-0/54606137#54606137).

Open the Gemfile.txt and edit the line
```ruby
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
```
To
```ruby
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6'
```

Now you server is up and running. Check it out by running `rails server`.

## Generating controllers
```bash
rails generate controller welcome index
```
Now the `app/controllers` directory should have a new `.rb` file called welcome_controller.rb with a method called index, the code should be similar to:
```ruby
class WelcomeController < ApplicationController
  def index
  end
end
```
This command also has generate a view in `app/views/welcome` directory with an extension `.erb`. 

Now by navigating to http://localhost:3000/welcome/index you must be able to see the modifications.

## Managing routes
Navigate to `config/routes.rb`. In this file you cant set the routes of your application. Learn more by reading the [docs](https://guides.rubyonrails.org/routing.html).
You can specify what Rails should route '/' to with the `root` method:
```ruby
root to: 'welcome#index'
```
You should put the `root` route at the top of the file, because it is the most popular route and should be matched first. But keep in mind that the `root` route only routes *GET* requests to the action.

## Execution of Ruby logic inside views
Once you're inside the path `app/views`, you can use Ruby syntax to perform dynamic logic inside the frontend. Let's see an example ilustrating how it works.
```html
<h1>Welcome#index</h1>
<p>Find me in app/views/welcome/index.html.erb</p>
<!-- Código entre '< %  %>' é executado mas não imprime nada na GUI -->
<!-- Código entre '< %=  %>' é executado e imprime a saída na GUI -->
<% [1,2,3,4,5].each do |number| %>
    <p>Número: <%= number * 2 %></p>
<%end%> <!--Sempre devemos encerrar a lógica Ruby com esse comando-->

<% mundo = 'Bode'%>
<%= "Hola #{mundo}" %>
<%end%>
```
## JavaScript and CSS
Once you're inside the path `app/assets` you should detect a few pre-enabled directories such as: __javascripts__, __stylesheets__.

## Creating your first model
Inside the root directory of your project type the given command.
```ruby
rails generate model Article 
```
Where Article is our table of content.
__Tip:__ models should start with a capital letter, words should be written in English, and always in singular.

```ruby
rails generate model Article title:string body:text visits_count:integer 
```
If no data type be informed, by default RoR assign the field as varchar. Text can store much more data than a string.
The result of our command are inside the directory `app/models/article.rb` and should seems like this:
```ruby
class Article < ApplicationRecord
    # The table => articles
    # Fields =: article.title() => 'The title Article'
    # Write methods
end
```
## Configurando databases and data migration
Open `<your-rails-root-directory>/Gemfile` and `config/database.yml`, take a good look at these files.
In the `database.yml` you should see three different database: development, test and production. And there's a reason for each one has a unique name, for the data not be erased when the `rake` command is evoked.

### Migrations are pending. To resolve this issue, run: bin/rails db:migrate RAILS_ENV=development 
Do like the message instructed:
```bash
bin/rails db:migrate RAILS_ENV=development
```
Migrations take the behavior of a LIFO (Last In First Out). They are encharged of do changes in our database.
### Setting Postgresql as database
```bash
app_name/Gemfile
# Postgresql Gem
gem 'pg', '~> 0.18'
```
After the changes you must run `sudo bundle install` in the root folder of your RoR application.
```yaml
app_name/config/database.yml

# Postgresql version 0.18
#   gem install pg -v 0.18.4
#
#   Ensure the Postgresql gem is defined in your Gemfile
#   gem 'pg'
#
# Postgresql version 0.18
#   gem install pg -v 0.18.4
#
#   Ensure the Postgresql gem is defined in your Gemfile
#   gem 'pg'
#
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  database: database_development

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: database_test

production:
  <<: *default
  database: database_production
```

```bash
rake db:create && rake db:migrate
```
