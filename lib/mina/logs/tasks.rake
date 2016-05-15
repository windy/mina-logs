require 'mina/bundler'
require 'mina/rails'

desc "Show production logs"
task logs: :environment do
  queue %[tail -f #{deploy_to}/#{current_path}/log/#{rails_env}.log]
end

desc "An alias name for `mina logs`"
task log: :environment do
  invoke :'logs'
end

desc "Show puma logs"
task puma_logs: :environment do
  queue %[tail -f #{deploy_to}/#{current_path}/log/puma.log]
end

desc "Show unicorn logs"
task unicorn_logs: :environment do
  queue %[tail -f #{deploy_to}/#{current_path}/log/unicorn.log]
end

desc "Show sidekiq logs"
task sidekiq_logs: :environment do
  queue %[tail -f #{deploy_to}/#{current_path}/log/sidekiq.log]
end

desc "Show resque logs"
task resque_logs: :environment do
  queue %[tail -f #{deploy_to}/#{current_path}/log/resque.log]
end
