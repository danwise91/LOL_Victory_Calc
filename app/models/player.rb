class Player < ActiveRecord::Base
  require 'riotapi'

  before_save :downcase_players

  before_save :mod_champ_save

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

#get the champion ID given the champion
def self.get_champion_id(champ_name)
  api = RiotApi.new
  champs = api.get_champion
  champs["data"][champ_name]
end

  #downcase all players names before saving
  def downcase_players
    self.p1.downcase!
    self.p2.downcase!
  end

  #modifies the name before saving to the database
  def mod_champ_save
    #split the word first. capitalize each individual word. join them back
    #with no spaces in between
    self.c1 = c1.split.map(&:capitalize).join('')
    self.c2 = c2.split.map(&:capitalize).join('')
  end

end
