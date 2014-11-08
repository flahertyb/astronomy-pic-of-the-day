module APOD

  APOD_URL='http://apod.nasa.gov/apod/astropix.html'

  class Page

    def initialize(url=APOD_URL)
      @html_document = Nokogiri::HTML(open(url))
    end

    def apod_url
      @html_document.css('img')[0].src
    end

  end
end
