# frozen_string_literal: true

require 'rails_helper'
require 'csv'

RSpec.describe 'shows/index.html.haml', type: :view do
  it 'shows list of first 10 shows' do
    assign :shows, @shows = CSV.parse(File.read('lib/netflix_titles.csv'), headers: true).first(10)
    render
    @shows.each { |show| expect(rendered).to have_content(show["title"]) }   
  end
end
