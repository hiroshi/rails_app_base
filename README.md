## Setup

Replace `YourAppName` and `your_app_name` into `your real app name` in the instruction below.

    git clone https://github.com/hiroshi/rails_app_base.git your_app_name
    cd your_app_name
    find app config config.ru Rakefile -type f | xargs ruby -n -i -e 'puts $_.gsub(/AppName/, "YourAppName").gsub(/app_name/, "your_app_name")'
    rake db:create db:migrate

- Replace secret token in `config/initializers/secret_token.rb` with the value of `rake secret`.
- Replace README.md with your own README.


## Start dev server

- Create your Twitter application at https://dev.twitter.com/apps

    TWITTER_AUTH={CONSUMER_KEY}:{CONSUMER_SECRET} rails s


## If you use heroku

    heroku config:set SECRET_TOKEN=`rake secret`
    heroku config:set TWITTER_AUTH={CONSUMER_KEY}:{CONSUMER_SECRET}


## Why you don't use Rails Application Template?

- I don't want to lean yet anohter DSL of Rails Application Template.
- I fear debugging template.rb (Edit template.rb and `rails new --template path/to/template.rb` again?)

Because I even didn't try to write a template.rb, some of them may be wrong.
