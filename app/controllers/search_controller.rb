class SearchController < ApplicationController

  def index
    @search = EvidenceItem.ransack(params[:q])

    if params[:save_search_results]
      @search_result = SearchResult.new(params[:search_result])
      if @search_result.save
        redirect_to :back
      end
    else
      @search_result = SearchResult.new
    end

    @search_url = SearchUrl.new
    @evidence_items = @search.result
  end

end
