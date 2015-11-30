require 'rails_helper'
require 'capybara/rails'

describe "Creating a new movie" do
    
  it "saves the movie and shows the new movie's details" do

    visit movies_url
    click_link 'Add New Movie'
    expect(current_path).to eq(new_movie_path)
    fill_in "Title", with: " "
    fill_in "Description", with: " "
    fill_in "Rating", with: " "
    fill_in "Total gross", with: " "
    click_button 'Create Movie'
    expect(current_path).to eq(movie_path(Movie.last))
    expect(page).to have_content(' ')
  end
end