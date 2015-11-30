require 'rails_helper'
require 'capybara/rails'


describe "Viewing the list of movies" do
	it "shows the movies" do
    visit movies_url
	expect(page).to have_content("Movies")
  end

end