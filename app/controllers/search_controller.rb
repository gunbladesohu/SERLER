class SearchController < ApplicationController

  def index
      @search = EvidenceItem.ransack(params[:q])
      @search_result = SearchResult.new
      @evidence_items = @search.result
  end

end
