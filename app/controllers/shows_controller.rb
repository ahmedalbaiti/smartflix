# frozen_string_literal: true

require 'csv'
require 'pry-byebug'

NUMBER_OF_SHOWS = 10
class ShowsController < ApplicationController
  def index
    @shows = Show.first(NUMBER_OF_SHOWS)
  end
end
