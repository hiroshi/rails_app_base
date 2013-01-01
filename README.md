## Usage

Replace `YourAppName` and 'your_app_name' into "your real app name" in the instruction below.

    git clone https://github.com/hiroshi/rails_app_base.git
    mv rails_app_base your_app_name
    cd your_app_name
    find app config config.ru Rakefile -type f | xargs ruby -n -i -e 'puts $_.gsub(/AppName/, "YourAppName").gsub(/appname/, "your_appn_ame")'


## Why you don't use Rails Application Template?

- I don't want to lean yet anohter DSL of Rails Application Template.
- I fear debugging template.rb (Edit template.rb and `rails new` again?)

Because I even didn't try to write a template.rb, some of them may be wrong.
