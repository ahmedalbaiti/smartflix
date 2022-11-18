# frozen_string_literal: true

require 'rails_helper'
require 'csv'

RSpec.describe 'shows/index.html.haml', type: :view do
  let(:shows) do
    CSV.read('spec/controller/shows/fixtures/netflix_titles_fixture.csv', headers: true)
  end
  it 'displays list of shows', :aggregate_failures do
    assign :shows, shows
    render
    shows.each { |show| expect(rendered).to have_content(show['title']) }
  end
end
