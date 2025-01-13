worker_processes 2
timeout 30
preload_app true
listen 4000

# To run server of Unicorn - bundle exec unicorn -c config/unicorn.rb
