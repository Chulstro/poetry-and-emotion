class SearchController < ApplicationController
  def index
    @results = Poem.poems_by_author(params[:author])
  end
end
