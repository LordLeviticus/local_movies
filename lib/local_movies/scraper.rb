class Scraper
    require 'pry'

    attr_accessor :zip_code, :url, :doc

    def initialize(zip_code)
        @zip_code = zip_code
        @url = "https://www.fandango.com/#{zip_code}_movietimes?q=#{zip_code}"
        @doc = scrape_fandango
        binding.pry
    end

    
    def scrape_fandango
        Nokogiri::HTML(open(@url))
    end

end
