source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'

# Asset template engines
gem 'sass'
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

# Add mongo mapper
gem 'mongo_mapper'
gem 'bson_ext'

# Add redis
gem 'redis'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# Rails 3.1 - Heroku
group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3'
  gem 'pg'
end

group :test do
  # To use debugger
  gem 'ruby-debug19', :require => 'ruby-debug'
  
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec-rails'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'growl', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'rb-inotify', :require => false if RUBY_PLATFORM =~ /linux/i
  gem 'libnotify', :require => false if RUBY_PLATFORM =~ /linux/i
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'capybara', :git => 'git://github.com/jnicklas/capybara.git'
  gem 'launchy'
  gem 'database_cleaner'
end
