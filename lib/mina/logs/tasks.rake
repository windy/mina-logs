require 'mina/bundler'
require 'mina/rails'

desc "Show production logs"
task logs: :environment do
  invoke :'_logs[production]'
end

desc "An alias name for `mina logs`"
task log: :environment do
  invoke :'logs'
end

desc "Show puma logs"
task puma_logs: :environment do
  invoke :'_logs[puma]'
end

desc "Show unicorn logs"
task unicorn_logs: :environment do
  invoke :'_logs[unicorn]'
end

desc "Show sidekiq logs"
task sidekiq_logs: :environment do
  invoke :'_logs[sidekiq]'
end

desc "Show resque logs"
task resque_logs: :environment do
  invoke :'_logs[resque]'
end

task :_logs, [:file] => [:environment] do |_, args|
  queue %[tail -f #{deploy_to}/#{current_path}/log/#{args[:file]}.log]
end
