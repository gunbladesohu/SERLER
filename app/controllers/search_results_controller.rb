class SearchResultsController < ApplicationController

  def create
      # todo
  end

  def create
    @search_result = SearchResult.new(params[:search_result])
    if @search_result.save
      # todo: needs meaningful redirect
      redirect_to root_path
    end
  end

end
