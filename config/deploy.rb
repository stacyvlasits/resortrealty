set :application, "realty"
set :repository,  "git@github.com:stacyvlasits/realty.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "realty/public"
role :web, "resortrealty.clavat.railsplayground.net"                          # Your HTTP server, Apache/etc
role :app, "resortrealty.clavat.railsplayground.net"                          # This may be the same as your `Web` server
role :db,  "resortrealty.clavat.railsplayground.net", :primary => true # This is where Rails migrations will run
role :db,  "resortrealty.clavat.railsplayground.net"

default_run_options[:pty] = true

set :user, "clavatra"
set :scm_username, "stacyvlasits"
set :use_sudo, false

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will neperm

# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end