class MoviesController < ApplicationController
  def search
    movie = params.permit(:recherche)
    @infos = SearchMovie.new.perform(movie[:recherche])

  end
  def home

  end
end
