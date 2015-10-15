class SearchController < ApplicationController

  def index
    @SEARCH_PREDICATES = [
      :eq,
      :not_eq,
      :cont,
      :not_cont,
      :start,
      :not_start,
      :end,
      :not_end,
    ]
    @SEARCH_ASSOCIATIONS = [
      :software_engineering_methods,
      :software_engineering_methodologies,
      :evidence_source,
      :evidence_source_bibtex_tags,
      :evidence_source_bibtex_type,
    ]
    @search_params = params[:q]
    @search_evidence_item = EvidenceItem.ransack(@search_params)
    @search_evidence_item.build_condition

    if params.count < 3
      render 'search_form'
      return
    end

    if params[:saved_search_result]
      @saved_search_result = SavedSearchResult.new(params[:saved_search_result])
      if @saved_search_result.save
        flash[:success] = "Search result saved as '#{@saved_search_result.name}'."
        redirect_to :back
        return
      end
    else
      @saved_search_result = SavedSearchResult.new
    end

    if params[:saved_search_query]
      @saved_search_query = SavedSearchQuery.new(params[:saved_search_query])
      if @saved_search_query.save
        flash[:success] = "Search query saved as '#{@saved_search_query.name}'."
        redirect_to :back
        return
      end
    else
      @saved_search_query = SavedSearchQuery.new
    end

    @evidence_items = @search_evidence_item.result(distinct: true)
    render 'results'
    return
  end

end
