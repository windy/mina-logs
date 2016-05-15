require 'mina/bundler'
require 'mina/rails'

desc "Show production logs"
task logs: :environment do
  queue! "tail -f current/logs/production.log"
end
