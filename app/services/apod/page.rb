require 'open-uri'

module APOD

  APOD_ROOT='http://apod.nasa.gov/apod'
  APOD_URL='http://apod.nasa.gov/apod/astropix.html'

  class Page

    include ActionView::Helpers

    def initialize(url=APOD_URL)
      @html_document = Nokogiri::HTML(open(url))
    end

    def url
      uri = @html_document.css('img')[0].
        attributes.detect { |attr| attr[1].name == 'src' }[1].value

      "#{APOD_ROOT}/#{uri}"
    end

    def explanation
      sanitize(text, tags: ['a']).split('Explanation:')[1]
    end

    def title
      @html_document.css('center')[1].css('b')[0].text
    end

    def text
      @html_document.css('p')[2].inner_html.gsub(/(href="(?!http))/, '\1http://apod.nasa.gov/apod/')
    end

  end
end
