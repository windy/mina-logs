require 'mina/bundler'
require 'mina/rails'

if Mina::VERSION >= "1.2.2"
  dependent =  :remote_environment
else
  dependent =  :environment
end

desc "Show production logs"
task logs: dependent do
  invoke :'_logs', 'production'
end

desc "An alias name for `mina logs`"
task log: dependent do
  invoke :'logs'
end

desc "Show puma logs"
task puma_logs: dependent do
  invoke :'_logs', 'puma'
end

desc "Show unicorn logs"
task unicorn_logs: dependent do
  invoke :'_logs', 'unicorn'
end

desc "Show sidekiq logs"
task sidekiq_logs: dependent do
  invoke :'_logs', 'sidekiq'
end

desc "Show resque logs"
task resque_logs: dependent do
  invoke :'_logs', 'resque'
end

task :_logs, [:file] => [dependent] do |_, args|
  command %[tail -f #{fetch(:current_path)}/log/#{args[:file]}.log]
end
