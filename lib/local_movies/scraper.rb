class Scraper
    require 'pry'
    require_relative './theater'

    attr_accessor :zip_code, :url, :doc, :new_theater

    def initialize(zip_code)
        @zip_code = zip_code
        @url = "https://www.imdb.com/showtimes/US/#{@zip_code}"
        @doc = scrape_fandango
        build_theaters
    end

    
    def build_theaters
        @doc.css('.list_item').each do |theater|
            theater_name = theater.css('.fav_box').text.strip
            theater_address = theater.css('.address').text.gsub(/\|.*$/,'').gsub(/\s{2,}/, ' ').strip.gsub("Wheelchair Accessible ", "").gsub("Hearing Devices Available ", "")
            @new_theater = Theater.new(theater_name, theater_address)
            
            theater.css('.list_item').each do |movie|
                movie_name = movie.css('.info h4').text.strip
                run_time = movie.css('.info .cert-runtime-genre time').text.strip
                show_times = movie.css('.info div.showtimes').text.gsub(/\s{2,}/, ' ').gsub("Get Tickets", "").strip
                @new_theater.add_movie(movie_name, run_time, show_times)
            end
        end
    end

    def scrape_fandango
        Nokogiri::HTML(open(@url))
    end

end
