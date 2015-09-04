class SearchController < ApplicationController
  def index
    @search=EvidenceItem.search do
      fulltext params[:q]
    end
    @evidence=@search.results
    @q=:q
  end
end
