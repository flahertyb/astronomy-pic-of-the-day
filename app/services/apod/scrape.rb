module APOD
  module Scrape
    def self.perform
      parsed_apod_page = ::APOD::Page.new

      ::Astronomy::Picture.create!(
        url: parsed_apod_page.url,
        text: parsed_apod_page.text
      )
    end
  end
end
