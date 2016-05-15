# Mina-logs

A mina plugin that watch production logs in local machine.

## Installation

Add this line to your Rails application's Gemfile:

```ruby
gem 'mina-logs', require: false
```

And then execute:

    $ bundle

## Usage

Add this to your `config/deploy.rb` file:

```ruby
require 'mina/logs'
```

Then:

    $ mina logs
    $ mina puma_logs
    $ mina unicorn_logs
    $ mina sidekiq_logs
    $ mina resque_logs

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
