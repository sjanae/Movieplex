require 'rails_helper'
require 'capybara/rails'


describe "Navigating movies" do
	it "navigates to detailed page" do
    visit movie_path(movie)
    clink_link "All Movies"
	expect(current_path).to eq(root_path)
  end

end