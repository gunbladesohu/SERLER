class SearchResultsController < ApplicationController

  def create
    @search_result = SearchResult.new(params[:search_result])
    if @search_result.save
      redirect_to :back
    else
      SearchController.index params
    end
  end

end
