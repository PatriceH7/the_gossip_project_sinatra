# controller.rb du gossip project sinatra

# require'bundler'  - ligne enlevée maintenant que l'on a config.ru qui lance ApplicationController
# Bundler.require   - ligne enlevée maintenant que l'on a config.ru qui lance ApplicationController
require 'gossip'


class ApplicationController < Sinatra::Base
	get '/' do 
#		"<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>" ligne enlevée car notre code est désormais dans index.erb
	erb :index, locals: {gossips: Gossip.all}
  end

	get '/gossips/new/' do 
	erb :new_gossip
  end

  post '/gossips/new/' do
#    puts "Salut, je suis dans le serveur" ----------------- cette section est supprimée du programme actif, maintenant qu'avec params, on crée la nouvelle entrée dans le fichier CSV
#    puts "Ceci est le contenu du hash params : #{params}"
#    puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
#    puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
#    puts "Ca déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"

#    new_author = 'gossip_author'
#    new_content = 'gossip_content'
#    new_gossip = Gossip.new(new_author, new_content)
    new_gossip = Gossip.new("#{params["gossip_author"]}", "#{params["gossip_content"]}")
#    puts "Voici les nouvelles entrées Auteur = #{new_author} et Content = #{new_content}"
    new_gossip.save
#    puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
#    puts "Ce programme progresse un peu maintenant, puisqu'on y voit le contenu de la nouvelle entrée dans le serveur"
    redirect '/'
  end

#	run! if app_file == $0  - ligne enlevée maintenant que l'on a config.ru qui lance ApplicationController

end
