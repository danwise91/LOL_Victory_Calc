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

  #downcase all players names before saving
  def downcase_players
    self.p1.downcase!
    self.p2.downcase!
  end
end
