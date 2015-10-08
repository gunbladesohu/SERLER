class SearchController < ApplicationController
    
  def index
    @search_params = params[:q]
		@search_evidence_item = EvidenceItem.ransack(@search_params)
    @search_evidence_item.build_condition

    unless params.count > 2
      render 'search_form'
      return
    end

    if params[:saved_search_result]
      @saved_search_result = SavedSearchResult.new(params[:saved_search_result])
      if @saved_search_result.save
        redirect_to :back
        return
      end
    else
      @saved_search_result = SavedSearchResult.new
    end

    if params[:saved_search_query]
      @saved_search_query = SavedSearchQuery.new(params[:saved_search_query])
      if @saved_search_query.save
        redirect_to :back
        return
      end
    else
      @saved_search_query = SavedSearchQuery.new
    end

    @evidence_items = @search_evidence_item.result
    render 'results'
    return
  end
  

end
