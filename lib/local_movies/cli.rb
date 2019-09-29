class CLI 

    def run 
        welcome_message
        sleep(1)
        description
        sleep(2)
        instructions
        program_input
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
        puts "\nEnter a five digit zipcode."
        puts "Or type exit to turn me off."
        print "=> "
    end

    def program_input
        user_input = gets.chomp
        
        case user_input
        when /\A[Ee][Xx][Ii][Tt]\z/
            puts "Enjoy your Movie!"
        when /\A\d{5}\z/
            sleep(0.5)
            print "Calculating"
            sleep(0.25)
            print "."
            sleep(0.25)
            print "."
            sleep(0.25)
            print "."
            puts ""
            zip_code = user_input
            scraper = Scraper.new(zip_code)
            Theater.print_all
            instructions
            program_input
        else
            puts "Something went wrong!"
            sleep(0.5)
            instructions
            program_input
        end
    end

end