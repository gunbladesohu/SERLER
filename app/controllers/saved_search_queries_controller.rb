class SavedSearchQueriesController < ApplicationController
  def index
    @search_url = SavedSearchQuery.all
  end
end
