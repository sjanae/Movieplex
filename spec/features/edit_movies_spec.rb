require 'rails_helper'
require 'capybara/rails'


describe "Editing a movie" do
  it "updates the movie and details" do
    
    visit movie_url(movie)
   	click_link 'Edit'
    expect(current_path).to eq(edit_movie_path(movie))
    fill_in 'Title', with: "Updated Movie Title"
	click_button 'Update Movie'
	expect(current_path).to eq(movie_path(movie))
	expect(page).to have_text('Updated Movie Title')
  end
  
end