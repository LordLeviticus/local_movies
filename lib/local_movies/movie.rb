class Movie
    attr_accessor :title, :rating, :run_time, :description, :show_times, :tickets_available

    @@all = []

    def initialize(title, rating, run_time, description, show_times, tickest_available)
        @title = title 
        @rating = rating 
        @run_time = run_time
        @description = description 
        @show_times = show_times 
        @tickets_available = tickets_available
        @@all << self
    end

    def self.all 
        @@all
    end
    


end