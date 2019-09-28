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
        print "Welcome to MovieBot"
        sleep(0.25)
        print "."
        sleep(0.25)
        print "."
        sleep(0.25)
        print "."
        sleep(0.25)
        print "."
        sleep(0.25)
        puts "."
    end

    def description
        puts "Your automated personal assistant for checking out all of you local theater and movie listings."

    end

    def instructions
        print "\nTo begin enter your five digit zipcode"
        print "."
        sleep(0.25)
        print "."
        sleep(0.25)
        puts "."
        sleep(0.5)
        puts "Or type exit to turn me off."
        print "=> "
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