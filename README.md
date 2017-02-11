# ActionCable Chat

This is a simple chat app using cable and devise. Users can add markdown to their messages.

See it in production at: [ac-chat.herokuapp.com](http://ac-chat.herokuapp.com).

#### Setup

1. `cd ac-chat`
2. `bundle install`
3. `rake db:create`
4. `rake db:migrate`
5. `rails server`

Note: This app uses Redis [installation instructions](https://redis.io/topics/quickstart). If you deploy to Heroku, make sure you're using the [Redis Clous add-on](https://elements.heroku.com/addons/rediscloud).

This app is using: 

- Ruby 2.3.0
- Rails 5
- Bootstrap 4 (aplha)
- PostgreSQL
- Redis