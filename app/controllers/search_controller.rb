class SearchController < ApplicationController
  def index
    binding.pry
    @results = Poem.poems_by_author(params[:author])
  end
end
