# Casetabs Twitter Feed

<img width="1092" alt="Screen Shot 2019-04-16 at 8 23 19 AM" src="https://user-images.githubusercontent.com/17211643/56227392-34aa9c00-602a-11e9-98ca-94b426cdfdba.png">


## Installation
    bundle install


## Configuration
Twitter API v1.1 requires you to authenticate via OAuth, so you'll need to
[register your application with Twitter][register]. Once you've registered an
application, make sure to set the correct access level, otherwise you may see
the error:

[register]: https://apps.twitter.com/

    Read-only application cannot POST

Your new application will be assigned a consumer key/secret pair and you will
be assigned an OAuth access token/secret pair for that application. You'll need
to configure these values before you make a request or else you'll get the
error:

    Bad Authentication data

You can pass configuration options as a block to `Twitter::REST::Client.new`.

In the `config/initializers/twitter.rb` you will find the configuration
```ruby
client = Twitter::REST::Client.new do |config|
    config.consumer_key = Rails.application.credentials.consumer_key
    config.consumer_secret = Rails.application.credentials.consumer_secret
    config.access_token = Rails.application.credentials.access_token
    config.access_token_secret = Rails.application.credentials.access_secret
end
```

to add encrypted credentials, Rails 5.2 comes with a way to edit the config/credentials.yml.enc file. You can do that by running the following command:
```ruby
EDITOR=vim rails credentials:edit
```
This will decrypt the credentials yml and can be edited with vim
```yml
consumer_key: <SECRETS>
consumer_secret: <SECRETS>
access_token: <SECRETS>
access_secret: <SECRETS>
```
## Running Locally
run ```rails server``` in the projects root directory and visit `http://localhost:3000/` to view twitter feed


