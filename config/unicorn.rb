require 'fileutils'
preload_app true
timeout 5
worker_processes (ENV['WEB_CONCURRENCY'] || 30).to_i
listen '/tmp/nginx.socket', backlog: 1024

before_fork do |server,worker|
  FileUtils.touch('/tmp/app-initialized')
end
