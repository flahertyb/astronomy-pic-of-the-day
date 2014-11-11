module Astronomy
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    desc 'get the pic of the day and related information'
    get do
      present ::Astronomy::Picture.latest.as_json(only: [:url, :explanation, :title, :apod_id])
    end

  end
end
