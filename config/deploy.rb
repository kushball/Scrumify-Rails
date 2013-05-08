require "bundler/capistrano"

set :domain, 'boltlab.com'
server domain, :web, :app, :db, primary: true

# Production Server
set :user, 'cloud'
set :application, 'groupme_fa12'
set :deploy_to, "/home/apps/#{application}" # Production application directory

# Temporarily commenting out till I figure out why this is a fix for deployment
# after the repo location change.
# 
# see: http://stackoverflow.com/a/11502144/334121
# set :deploy_via, :remote_cache

set :use_sudo, true                         # Usualy necessary if not on a shared host

# Production Repository
set :scm, 'git'
set :github_user, 'git'
set :github_domain, 'github.com'
set :github_hosting_account, 'ucsd-kgb'
set :github_application_name, 'ucsd-class-tools'
set :repository, "#{github_user}@#{github_domain}:#{github_hosting_account}/#{github_application_name}.git"
set :branch, 'production'

# Execution options
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

# Callback declarations
after "deploy", "deploy:cleanup" # keep only the last 5 releases
after "deploy:rollback:revision", "bundler:install"
after "deploy:update_code", "bundler:bundle_new_release"
after "bundler:install", "db:migrate"

# Deploy tasks
# 
# Run upon 'cap deploy:x'
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :cold do
    update
    start
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

# Bundler tasks
# 
# Run a 'bundle install' and create symlink
namespace :bundler do
  task :bundle_new_release, :roles => :app do
    bundler.create_symlink
    bundler.install
  end
  
  task :create_symlink, :roles => :app do
    shared_dir = File.join(shared_path, 'bundle')
    release_dir = File.join(current_release, '.bundle')
    run "mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}"
    
    log_dir = File.join(current_release, 'log')
    shared_log_dir = File.join(shared_path, 'log')
    run "rm #{log_dir} && mkdir -p #{log_dir} && ln -s #{shared_log_dir}/production.log #{log_dir}"
    
    config_dir = File.join(current_release, 'config')
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  
  task :install, :roles => :app do
    run "cd #{release_path} && bundle install --deployment"

    on_rollback do
      if previous_release
        run "cd #{previous_release} && bundle install --deployment"
      else
        logger.important "no previous release to rollback to, rollback of bundler:install skipped"
      end
    end
  end
end

# Database tasks
namespace :db do
  task :create, :roles => :app do
    run "cd #{release_path} && bundle exec rake db:create RAILS_ENV=production"
  end
  task :migrate, :roles => :app do
    run "cd #{release_path} && bundle exec rake db:migrate RAILS_ENV=production"
  end
end
