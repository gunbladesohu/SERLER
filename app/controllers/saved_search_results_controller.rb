class SavedSearchResultsController < ApplicationController
  def index
    @saved_search_results = SavedSearchResult.all
  end
end
