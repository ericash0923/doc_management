source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'ancestry', '~> 3.0', '>= 3.0.1'
gem 'devise', '~> 4.4'
gem 'bootstrap', '~> 4.0.0'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'rmagick', :require => 'rmagick'
gem "font-awesome-rails"
gem 'ransack', '~> 1.8', '>= 1.8.6'
gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
gem 'carrierwave-aws', '~> 1.0'

ruby "2.4.0"
