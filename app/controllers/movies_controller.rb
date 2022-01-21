class MoviesController < ApplicationController
    before_action :load_data only
    class Movie
        attr_reader :id, :name, :recommendation, :stars, :year, :genre
        def initialize (id, name, recommendation, stars, year, genre)
            @id = id
            @name = name
            @recommendation = recommendation
            @stars = stars
            @year = year
            @genre = genre
        end
    end
    def index

    end

    def show
        @movie = @movies.find{|m| m.id == params[:id].to_i}
    end

    def new

    end

    def create
        p params
        @movies << Movie.new(5, params[:name], params[:recommendation], params[:stars].to_f, params[:year].to_i, params[:genre])
        p @movies

    end

    def load_data
        @movies = [
            Movie.new(1, "Matrix","I've heard the new matrix is a 3.5 at best",3.5,2021, 'SciFi'),
            Movie.new(2, "Spiderman", 'Awesome!',4.5, 2021, 'Superhero' ),
            Movie.new(3, 'Scream', 'Super scary',4.0,2022, 'Horror'),
            Movie.new(4, 'Copshop', 'A fantastic, action-packed thrill ride',5.0,2022, 'Thriller')
        ]
    end
end
