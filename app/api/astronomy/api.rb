module Astronomy
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    header 'Access-Control-Allow-Origin', '*'
    header 'Access-Control-Allow-Methods', 'POST, PUT, DELETE, GET, OPTIONS'
    header 'Access-Control-Request-Method', '*'
    header 'Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization'


    desc 'get the pic of the day and related information'
    get do
      present ::Astronomy::Picture.latest.as_json(only: [:url, :text, :apod_id])
    end

  end
end
