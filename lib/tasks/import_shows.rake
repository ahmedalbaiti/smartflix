# frozen_string_literal: true

require 'csv'

desc 'Import shows from csv'
shows = []
task import_shows: :environment do
  CSV.foreach('lib/netflix_titles.csv', headers: true, header_converters: :symbol) do |row|
    shows << row.to_h.except(:show_id).transform_keys(type: :show_type)
  end
  Show.import(shows)
end
