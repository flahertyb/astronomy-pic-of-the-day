module Astronomy
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    desc 'get the pic of the day and related information'
    get do
      present (
        {
          'url' => 'placekitten.com/800/900',
          'text' => 'Some text about the picture'
        }
      )
    end

  end
end
