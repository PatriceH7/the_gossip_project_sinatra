# gossip.rb de gossip project sinatra


require 'pry'
require 'csv'


class Gossip

	def initialize(author, content)
		@content = content
		@author = author
	end

	def save
		CSV.open("/Users/PatriceH/Desktop/THP2/thpWk5Day1/the_gossip_project_sinatra/db/gossip.csv", "ab") do |csv|
			csv << ["Mon super auteur", "Ma super description"]
		end
	end
end

binding.pry


