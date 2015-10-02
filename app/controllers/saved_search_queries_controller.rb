class SavedSearchQueriesController < ApplicationController
  def index
    @saved_search_queries = SavedSearchQuery.all
  end
end
