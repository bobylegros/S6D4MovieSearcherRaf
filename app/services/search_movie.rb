require 'dotenv'

class SearchMovie
  def initialize
    Dotenv.load
    Tmdb::Api.key(ENV['CLE_API'])
    Tmdb::Api.language("en")
  end

  def perform(recherche)
   searchmovie(recherche)
   # get_movie_id
   # get_movie_info
  end

 def searchmovie(recherche)
   # @movie = Tmdb::Movie.find(recherche)
   @movie = Tmdb::Search.movie(recherche).results

 end


end
