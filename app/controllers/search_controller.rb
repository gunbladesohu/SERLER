class SearchController < ApplicationController
  def index
        # legacy - full text search, display the search result (in EvidenceItem) via app/views/search/index.html.erb
    @search=EvidenceItem.search do
      fulltext params[:q]
    end
    @evidence=@search.results
    @q=:q
        # legacy end
  end
end
