# Authentication Engine

Authentication engine uses `devise` and `devise-jwt` to provide an authentication strategy for Stonks API.

- [Authentication](#authentication)
  - [Installation](#installation)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'components/authentication', path: 'components/authentication'
```

And then execute:
```bash
$ bundle
```

Please mount the routes inside your application:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount Authentication::Engine => '/authentication'
end
```

You need to create a new initializer file for devise in your main application:

```ruby
# config/initializers/devise.rb
Devise.setup do |config|
  config.router_name = "authentication"
end
```

Run the migrations:

```bash
$ rake db:migrate
```

Finally, in order to make devise work, you should define the following environment keys in your environment file:

```bash
DEVISE_JWT_SECRET=
DEVISE_JWT_EXPIRATION_TIME=
DEVISE_SECRET_KEY=
DEVISE_JWT_SECRET_KEY=
```
