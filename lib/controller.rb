# controller.rb du gossip project sinatra

# require'bundler'  - ligne enlevée maintenant que l'on a config.ru qui lance ApplicationController
# Bundler.require   - ligne enlevée maintenant que l'on a config.ru qui lance ApplicationController


class ApplicationController < Sinatra::Base
	get '/' do 
#		"<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>" ligne enlevée car notre code est désormais dans index.erb
	erb :index
  end

	get '/gossips/new/' do 
	erb :new_gossip
  end

  post '/gossips/new/' do 
    puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
  end

#	run! if app_file == $0  - ligne enlevée maintenant que l'on a config.ru qui lance ApplicationController

end
