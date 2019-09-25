class CLI 


    def run 
        welcome_message
        sleep(1)
        description
        sleep (2)
        instructions
        scrape_site
    end


    def welcome_message
        #Enter Welcome Message and CLI Application Name Below
        puts "\n"
        puts "Welcome to Local Movies!"
        puts "\n"
    end

    def description
        #Enter the CLI Application Description Below
        puts "Your #1 place to get all of your local movie listings!"
    end

    def instructions
        #Put your instructions to enter zipcode Below
        puts "Please enter your zip code to see your local listings: "
    end

    def scrape_site
        zip_code = gets
        scraper = Scraper.new(zip_code.chomp)
    end

end