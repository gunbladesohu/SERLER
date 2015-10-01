class SearchController < ApplicationController

  def index
      @search = EvidenceItem.ransack(params[:q])
      @search_result = SearchResult.new
      @search_url=SearchUrl.new
      @evidence_items = @search.result
  end

end
