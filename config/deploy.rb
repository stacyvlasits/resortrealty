ssh_options[:forward_agent] = true
default_run_options[:pty] = true 

set :use_sudo, false 
set :application, "realty"
set :repository,  "git://github.com/stacyvlasits/realty.git"
set :deploy_to, "Library/Rails/#{application}"
set :mongrel_conf, "#{current_path}/config/mongrel_cluster.yml"
set :user, "clavatra"
set :scm, :git
set :scm_passphrase, "JR1L5B7da9BoEqNLXYu5" #This is your custom users password
set :branch, "master"

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "resortrealty.clavat.railsplayground.net"                          # Your HTTP server, Apache/etc
role :app, "resortrealty.clavat.railsplayground.net"                          # This may be the same as your `Web` server
role :db,  "resortrealty.clavat.railsplayground.net", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"
default_run_options[:pty] = true




# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end