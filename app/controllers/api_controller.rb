require "faraday"
require "json"
class ApiController < ApplicationController
    API_URL = 'https://api.coindesk.com/v1/bpi/currentprice.json'.freeze
    
    def api
        @respons = JSON.parse(client.get.body.to_s)
    end

    def client
        Faraday.new(
            url: API_URL
          ) do |faraday|
            faraday.adapter Faraday.default_adapter
        end
    end
end