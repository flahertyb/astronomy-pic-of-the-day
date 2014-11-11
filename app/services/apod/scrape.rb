module APOD
  module Scrape
    def self.perform
      parsed_apod_page = ::APOD::Page.new

      ::Astronomy::Picture.create!(
        url: parsed_apod_page.url,
        explanation: parsed_apod_page.explanation,
        text: parsed_apod_page.text,
        title: parsed_apod_page.title,
        apod_id: "apod-#{Date.today.strftime('%Y-%m-%d')}"
      )
    end
  end
end
