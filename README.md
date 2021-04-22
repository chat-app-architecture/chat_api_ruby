# Rails API

Contains Rails functionality that allows Storns to manage `Users`, `UserResources`, `Groups` and `GroupMessages` models.

## Installation

```bash
bundle install
rake db:create
rake db:migrate
```

## Run the Rails Server

```bash
rails s
```

## Run specs

```bash
# please check lib/tasks/rspec.rake
rake
```

## Run ruby scanners

```bash
rubocop

brakeman --path ./components/api
brakeman --path ./components/authentication
brakeman --path ./components/chat

bundler-audit
```
