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

error 
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

Now you server is up and running.
