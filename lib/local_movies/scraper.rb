class Scraper
    require 'pry'

    attr_accessor :zip_code, :url, :doc

    def initialize(zip_code)
        @zip_code = zip_code
        @url = "https://www.imdb.com/showtimes/US/#{@zip_code}"
        @doc = scrape_fandango
        build_theaters
    end

    
    def build_theaters
        @doc.css('.list_item').each do |theater|
            theater_name = theater.css('.fav_box').text
            theater_address = theater.css('.address').text
            theater.css('.list_item').each do |movie|
                movie_name = movie.css('.info h4').text.strip
                run_time = movie.css('.info .cert-runtime-genre time').text.strip
                show_times = movie.css('.info div.showtimes a').first.text.strip
                binding.pry
            end
        end
        puts theater_name
    end

    def scrape_fandango
        Nokogiri::HTML(open(@url))
    end

end
