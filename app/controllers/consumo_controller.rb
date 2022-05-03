class ConsumoController < ApplicationController

    def index 
        response = RestClient::Request.new(
            :method => :get,
            :url => "https://pokeapi.co/api/v2/pokemon/pikachu"
        ).execute

        @resultado = JSON.parse(response.to_str)
    end

    def terremotos 
        response = RestClient::Request.new(
            :method => :get,
            :url => "https://api.gael.cloud/general/public/sismos"
        ).execute

        @resultado = JSON.parse(response.to_str)
    end

end
