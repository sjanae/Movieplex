class MoviesController < ApplicationController
	def index
		@movies = ["Iron Man", "Superman", "Spider-man", "X-Men"]
	end
end
