# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'index route', type: :system do
  it 'shows page content' do
    visit '/'
    expect(page).to have_content('Smartflix')
  end
end
