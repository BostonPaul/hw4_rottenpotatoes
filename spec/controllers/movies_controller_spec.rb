require 'spec_helper'
require "rspec"

describe MoviesController do
  describe 'find similar movies' do

    it "should call the model method that returns similar movies" do
      Movie.should_receive(:find_similar_movies).with('Ridley Scott')
      post :search_similar_movies, {:search_terms => 'Ridley Scott'}
    end
    it "should select the similar movie template for rendering"
    it "should make the returns similar movies available to the template"

  end
end