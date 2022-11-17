# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'index route', type: :system do
  it 'shows page content' do
    visit '/'
    expect(page).to have_content("Dick Johnson Is Dead") 
    expect(page).to have_content("Blood & Water") 
    expect(page).to have_content("Ganglands") 
    expect(page).to have_content("Jailbirds New Orleans") 
    expect(page).to have_content("Midnight Mass")
    expect(page).to have_content("Sankofa")
  end
end
