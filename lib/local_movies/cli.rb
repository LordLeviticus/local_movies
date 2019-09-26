class CLI 



    def run 
        welcome_message
        sleep(1)
        description
        sleep (2)
        instructions
        scrape_site
        Theater.print_all
        thank_you
    end

    def thank_you
        sleep(2)
        puts "\nThank you for using Local Movie Listings! Have a great day!"
    end

    def welcome_message
        puts "\n"
        puts "Welcome to Local Movie Listings!"
    end

    def description
        puts "Your #1 place to get all of your local movie listings!"
    end

    def instructions
        print "\nPlease enter your zip code to see your local listings: "
    end

    def scrape_site
        zip_code = gets
        sleep(0.5)
        print "Calculating"
        sleep(0.25)
        print "."
        sleep(0.25)
        print "."
        sleep(0.25)
        print "."
        scraper = Scraper.new(zip_code.chomp)
    end

end