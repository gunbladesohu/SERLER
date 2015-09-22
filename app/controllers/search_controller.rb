class SearchController < ApplicationController
  def index
    @evidence_items=EvidenceItem.all
    @search_query=params[:q]
  end
end
