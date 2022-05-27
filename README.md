# Stonks Rails API

Stonks Rails API is Rails API that has functionality to allows Storns to manage `Users`, `UserResources`, `Groups` and `GroupMessages` models.

- [Stonks Rails API](#stonks-rails-api)
  - [Installation](#installation)
    - [Run the server](#run-the-server)
    - [Run specs](#run-specs)
    - [Run Ruby scanners](#run-ruby-scanners)
    - [Install and start Redis](#redis)
  - [Engines](#engines)
    - [Api Engine](#api-engine)
    - [Authentication Engine](#authentication-engine)
    - [Chat Engine](#chat-engine)

## Installation

```bash
bundle install
rake db:create
rake db:migrate
```

### Run the server

```bash
rails server
```

### Run specs

```bash
# please check lib/tasks/rspec.rake
rake
```

### Run ruby scanners

Note that these commands can be easily integrated in Circle CI.

```bash
rubocop

brakeman --path ./components/api
brakeman --path ./components/authentication
brakeman --path ./components/chat

bundler-audit
```

## Redis

Please install Redis in your machine: https://redis.io/docs/getting-started/installation/.

After the installation, please run:

```bash
redis-server
```

## Engines

For more information about the engines, please visit their respective READMEs.

### Api Engine

[API Engine](https://github.com/chat-app-architecture/chat_api_ruby/tree/master/components/api/README.md)

### Authentication Engine

[Authentication Engine](https://github.com/chat-app-architecture/chat_api_ruby/tree/master/components/authentication/README.md)

### Chat Engine

[Chat Engine](https://github.com/chat-app-architecture/chat_api_ruby/tree/master/components/chat/README.md)
