worker_processes (ENV['WEB_CONCURRENCY'] || 30).to_i
timeout 30
preload_app true
