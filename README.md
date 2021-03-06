# Mina-logs

A mina plugin that watch production logs in local machine.

![Gem version](https://badge.fury.io/rb/mina-logs.svg)

For mina 0.3.8, please use `0.1.0` version.

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

```shell
# tail -f log/production.log
$ mina logs
# tail -f log/puma.log
$ mina puma_logs
# tail -f log/unicorn.log
$ mina unicorn_logs
# tail -f log/sidekiq.log
$ mina sidekiq_logs
# tail -f log/resque.log
$ mina resque_logs
# tail -f log/xx.log
$ mina '_logs[xx]'
```
## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
