class RiotApi
  require 'httparty'
  require 'json'

  BASE_URL = "https://na.api.pvp.net"
  API_KEY = ENV["RIOT_API_KEY"]


#summoner-v1.4 you can call the api to return information
#on a certain summoner given the name including the
#summonerID
#(api/lol/{region}/v1.4/summoner/by-name/{summonerNames})
#our app looks for summoner names we can utlize this method
#create a function to parse it into Json format first
#parse_json to return data hash

def get_summoner_id(name)
  summoner_url = "#{BASE_URL}/api/lol/na/v1.4/summoner/by-name/#{name}#{API_KEY}"
  parse_json(summoner_url)
end
#double quotes is mandatory!
#given a name the get_summoner_id method will return all summoner
#information given on that name


def get_full_stats(summoner_id)
  stat_url = "#{BASE_URL}/api/lol/na/v1.3/stats/by-summoner/#{summoner_id}/ranked#{API_KEY}"
  parse_json(stat_url)
end
#the get_full_stats method will take the summoner id and return the statistics from the riot api


def get_champion
  champion_url = "#{BASE_URL}/api/lol/static-data/na/v1.2/champion#{API_KEY}"
  parse_json(champion_url)
end


  #httparty gem allows the application to establish a connection with a
  #third party api and parse it into json format
#must require the httparty gem insid ethe file
#establish variable for Base url and one for api key
#parse the information we get into json format
  def parse_json(url)
    response = HTTParty.get(url)
    json = JSON.parse(response.body)
    json
  end
end
