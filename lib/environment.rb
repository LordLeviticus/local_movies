require_relative './local_movies/version'
require_relative './local_movies/cli'
require_relative './local_movies/scraper'

require 'nokogiri'
require 'open-uri'

module LocalMovies
  class Error < StandardError; end
  # Your code goes here...
end
