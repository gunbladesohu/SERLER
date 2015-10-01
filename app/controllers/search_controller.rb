class SearchController < ApplicationController

  def index
    @search = EvidenceItem.ransack(params[:q])

    if params[:save_results]
      @saved_result = SearchResult.new(params[:saved_result])
      if @saved_result.save
        redirect_to :back
      end
    else
      @saved_result = SearchResult.new
    end

    if params[:save_query]
      @saved_query = SearchUrl.new(params[:search_url])
      if @saved_query.save
        redirect_to :back
      end
    else
      @saved_query = SearchUrl.new
    end

    @evidence_items = @search.result
  end

end
