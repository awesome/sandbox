source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-ui-rails'
end

gem 'jquery-rails'
gem 'rails3-jquery-autocomplete'
gem 'bootstrap-sass'
gem 'bootstrap-datepicker-rails'
gem 'simple_form'
gem 'nested_form'
gem 'devise'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


group :development, :test do
	gem 'pg'

	#the gem for minitest is arguable.... could just use regular minitest
	gem 'minitest'
	#gem "minitest-rails", git: "git://github.com/blowmage/minitest-rails.git"
	gem 'capybara'
	gem 'launchy' #for save_and_open_page
	gem 'capybara_minitest_spec'  #this is useful
	gem 'database_cleaner' #needed for capybara
	#gem 'spork-minitest'
	gem 'spork'
	gem 'spork-testunit'
	gem "factory_girl_rails", '1.4.0'
	#gem 'guard-minitest'  lol guard-minitest doesn't work with spork-minitest....
	gem 'guard-spork'

end

group :production do
	gem 'pg'
end