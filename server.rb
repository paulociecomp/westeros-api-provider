require 'sinatra/base'

module Westeros
  class Api < Sinatra::Base
    places = [
      {
        place: "Ponta Tempestade",
        house: "Baratheon",
      },
      {
        place: "Rochedo Casterly",
        house: "Lannister",
      },
      {
        place: "Atalaia da água cinzenta",
        house: "Reed",
      },
      {
        place: "Pedra do Dragão",
        house: "Baratheon",
      }
    ]

    get '/westeros' do
      content_type :json, charset: 'utf-8'
      places.to_json
    end
  end
end
