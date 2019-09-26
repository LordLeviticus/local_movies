class Movie
    attr_accessor :title, :run_time, :show_times, :theater

    @@all = []

    def initialize(title, run_time, show_times, theater)
        @title = title 
        @run_time = run_time
        @show_times = show_times 
        @theater = theater
        @@all << self
    end

    def self.all 
        @@all
    end
    


end