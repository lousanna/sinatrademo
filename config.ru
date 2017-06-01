require './app'

set :public_folder, Proc.new { File.join(root, "public") }
set :views, Proc.new { File.join(root, "views") }

run Sinatra::Application
