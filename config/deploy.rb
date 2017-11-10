# config valid for current version and patch releases of Capistrano
lock "~> 3.10.0"

set :branch, "user-function"
set :application, "booklog16d"
set :repo_url, "git://github.com/Motohide/booklog16d.git"

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

set :ssh_options, auth_methods: ['publickey'],
                  keys: ['/Users/motohide/.ssh/hahaha.pem']

set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }
set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }
set :keep_releases, 5
set :linked_files, %w{ config/secrets.yml }

after 'deploy:publishing', 'deploy:restart'
  namespace :deploy do
    desc 'db_seed'
    task :db_seed do
      on roles(:db) do |host|
        with rails_env: fetch(rails_env) do
          within current_path do
            execute :bundle, :exec, :rake, 'db:seed'
          end
        end
      end
    invoke 'unicorn:restart'
  end
end
