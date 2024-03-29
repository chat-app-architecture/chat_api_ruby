# Chat Engine

Chat Engine is a plugin that allows Stonks to manage `Group` and `GroupMessage` models/tables.

- [Chat Engine](#chat-engine)
  - [Installation](#installation)
  - [Design and Usage](#design-and-usage)
    - [Code Examples](#code-examples)
      - [Create message](#create-message)
      - [Create group](#create-group)
      - [Find group](#find-group)
      - [Retrieve groups](#retrieve-groups)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'components/chat', path: 'components/chat'
```

And then execute:
```bash
$ bundle
```

Please mount the routes inside your application:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount Chat::Engine => '/chat'
end
```

## Design and Usage

This component consists of two tables: `groups` and `group_messages`.

### Code Examples

#### Create message

Creates a message in a group.

```ruby
# @param message_params [Hash] Message attributes
# @return [Hash]

message_params = {
  group_id: 1,
  user_id: 1,
  message: "Where can I buy this?"
}

GroupMessage.create(message_params)
=> {
   group_id: 1,
   user_id: 1,
   message: "Where can I buy this?"
 }
```

#### Create group

Creates a new group.

```ruby
# @param group_params [Hash] Group attributes
# @return [Hash]

group_params = {
  name: "Stanley Park Group"
}

Group.create(group_params)
=> {
   id: "1",
   name: "Stanley Park Group",
   description: "Stanley Park Chat Group"
 }
```

#### Find group

Retrieve a specific group.

```ruby
# @param id [String] Group id
# @return [Hash]

id = 1

Group.find(id)
=> {
   id: "1",
   name: "Stanley Park Group",
   description: "Stanley Park Chat Group"
 }
```

#### Retrieve groups

Retrieves a list of groups.

```ruby
# @return [Hash]

Group.all
=> [{
   id: "1",
   name: "Stanley Park Group",
   description: "Stanley Park Chat Group"
 },
 {
   id: "2",
   name: "Stanley Park Beer Group",
   description: "Stanley Park Beer Chat Group"
 }]
```
