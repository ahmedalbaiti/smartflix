# frozen_string_literal: true

require 'csv'
require 'pry-byebug'

NUMBER_OF_SHOWS = 10
class ShowsController < ApplicationController
  def index
    @shows = CSV.parse(File.read('lib/netflix_titles.csv'), headers: true).first(NUMBER_OF_SHOWS)
  end
end
