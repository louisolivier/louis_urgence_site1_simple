$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
require "bundler/capistrano"
set :rvm_type, :user

default_run_options[:pty] = true

set :application, "test"
set :repository,  "git@github.com:louisolivier/louis_urgence_site1_simple.git"

set :scm_username, "louisolivier"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/var/www/sites/urgenceattente.ca"

role :web, "173.255.233.171"                          # Your HTTP server, Apache/etc
role :app, "173.255.233.171"                          # This may be the same as your `Web` server
role :db,  "173.255.233.171", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

#If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end