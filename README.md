# Stonks Rails API

Contains Rails functionality that allows Storns to manage `Users`, `UserResources`, `Groups` and `GroupMessages` models.

- [Stonks Rails API](#stonks-rails-api)
  - [Installation](#installation)
    - [Run the server](#Run the server)
    - [Run tests](#run-tests)
    - [Run Ruby scanners](#run-ruby-scanners)
  - [Engines](#engines)
    - [Api Engine](#api-engine)
    - [Authentication Engine](#authentication-engine)
    - [Chat Engine](#Chat-engine)

## Installation

```bash
bundle install
rake db:create
rake db:migrate
```

### Run the server

```bash
rails s
```

### Run specs

```bash
# please check lib/tasks/rspec.rake
rake
```

### Run ruby scanners

```bash
rubocop

brakeman --path ./components/api
brakeman --path ./components/authentication
brakeman --path ./components/chat

bundler-audit
```

## Engines

For more information about the engines, please visit their respective README.

### Api Engine

[API Engine](https://gitlab.com/vbrazo/chat_rails_api/-/blob/master/components/api/README.md)

### Authentication Engine

[Authentication Engine](https://gitlab.com/vbrazo/chat_rails_api/-/blob/master/components/authentication/README.md)

### Chat Engine

[Chat Engine](https://gitlab.com/vbrazo/chat_rails_api/-/blob/master/components/chat/README.md)
