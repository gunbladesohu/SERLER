class SearchResultsController < ApplicationController

  def create
      # todo
  end

  def create
    @search_result = SearchResult.new(params[:search_result])
    if @search_result.save
      redirect_to :back
    end
  end

end
