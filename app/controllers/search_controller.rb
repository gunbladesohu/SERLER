class SearchController < ApplicationController

  def index
    @search = EvidenceItem.ransack(params[:q])

    if params[:saved_search_result]
      @saved_search_result = SavedSearchResult.new(params[:saved_search_result])
      if @saved_search_result.save
        redirect_to :back
      end
    else
      @saved_search_result = SavedSearchResult.new
    end

    if params[:saved_search_query]
      @saved_search_query = SavedSearchQuery.new(params[:saved_search_query])
      if @saved_search_query.save
        redirect_to :back
      end
    else
      @saved_search_query = SavedSearchQuery.new
    end

    @evidence_items = @search.result
  end

end
