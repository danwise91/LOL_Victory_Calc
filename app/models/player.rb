class Player < ActiveRecord::Base
  require 'riotapi'

  before_save :downcase_players

  #returns the player id
  #creates new instance of riot api
  #call on the get_summoner_id method and pass in a name
  #returns information obtained in the api
  def self.return_id(name)
    api = RiotApi.new
    info = api.get_summoner_id(name)
    info[name]["id"]
  end

#return a list of champions a given summoner has played in ranked
  def self.return_summoner_champion_list(summoner_name)
    id = return_id(summoner_name)
    api = RiotApi.new
    full_stat = api.get_full_stats(id)
    full_stat["champions"]
  end

  #downcase all players names before saving
  def downcase_players
    self.p1.downcase!
    self.p2.downcase!
  end
end
