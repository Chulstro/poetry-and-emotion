require 'rails_helper'

RSpec.describe "When I fill in a field on the root path" do
  it "brings me to a search page with poems" do
    visit '/'

    fill_in :author, with: "Emily"
    click_on "Get Poems"

    expect(current_path).to eq('/search')

    within '.poem-0' do
      expect(page).to have_content("Emily Dickinson")
      expect(page).to have_content("Not at Home to Callers")
      expect(page).to have_content("Says the Naked Tree")
    end
    
    within '.poem-9' do
      expect(page).to have_content("Emily Bronte")
      expect(page).to have_content("'Tis moonlight, summer moonlight")
      expect(page).to have_content("All soft and still and fair;")
    end
  end
end
