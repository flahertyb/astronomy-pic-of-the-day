module Astronomy
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    desc 'get the pic of the day and related information'
    get do
      picture_json = ::Astronomy::Picture.latest.as_json(only: [:url, :explanation, :title, :apod_id])

      error!('No pictures found', 404) if picture_json.empty?

      present picture_json
    end

  end
end
