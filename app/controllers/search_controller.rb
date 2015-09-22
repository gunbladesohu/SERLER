class SearchController < ApplicationController

  def index
    @search_query = params[:query]
    @evidence_items = EvidenceItem.all
  end


end
