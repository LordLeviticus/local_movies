class Theater

    attr_accessor :name, :address, :movies
    require_relative "./movie"
    require 'pry'

    @@all = []
    

    def initialize(name, address)
        @movies = []
        @name = name 
        @address = address 
        if @name != ""
            @@all << self
        end
    end

    def self.all 
        @@all 
    end

    def add_movie(name, run_time, show_times)
        new_movie = Movie.new(name, run_time, show_times, self)
        @movies << new_movie
    end

    def self.print_all
        @@all.each do |theater|
            counter = 1
            puts "\nPress Enter to Continue..."
            gets
            sleep(2)
            puts ""
            puts ""
            puts theater.name
            puts theater.address
            puts ""
            sleep(1)
            puts "THEATER LISTINGS"
            sleep(1)
            puts ""
            theater.movies.each do |movie|
                puts "#{counter}. #{movie.title}"
                puts "Run Time: #{movie.run_time}"
                puts "Show Times: #{movie.show_times}"
                puts ""
                counter += 1
                sleep(0.5)
                #binding.pry
            end
            puts "<------------------------->"
        end
    end



end