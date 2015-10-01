class RenameSearchResultToSavedSearchResult < ActiveRecord::Migration
  def change
    rename_table :search_results, :saved_search_results
  end
end
