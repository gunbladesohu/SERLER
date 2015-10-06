class SearchController < ApplicationController
  
  
  def advanced_search
    @search_params = params[:q]
    @search = EvidenceItem.search(@search_params)
    
    @res=@search.result
    
    unless params.count > 2
      render 'advanced_search'
      return
    end
    
    @evidence_items = @search.result
    render 'results'
    return
    
  end
  
  
  def index
    @search_params = params[:q]
    @search = EvidenceItem.search(@search_params)
    @search.build_condition

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

    @evidence_items = @search.result
    render 'results'
    return
  end
  

end
