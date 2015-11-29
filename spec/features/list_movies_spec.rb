require 'rails_helper'
require 'capybara/rails'


describe "Viewing the list of movies" do
	it "shows the movies" do
    visit root_path
	expect(page).to have_content("Movies")
  end

end