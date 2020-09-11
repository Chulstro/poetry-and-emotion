require 'rails_helper'

RSpec.describe "When I fill in a field on the root path" do
  it "brings me to a search page with poems" do
    visit '/'

    fill_in :author, with: "Emily"
    click_on "Get Poems"

    expect(current_path).to eq('/search')

    expect(page).to have_content("Emily Dickinson")
  end
end
