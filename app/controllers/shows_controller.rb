require 'csv'
require 'pry-byebug'
class ShowsController < ApplicationController
    def index 
    	@shows = CSV.parse(File.read('lib/netflix_titles.csv'), headers: true).first(10)
		end 
end
