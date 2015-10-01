class RenameSearchUrlToSavedSearchQuery < ActiveRecord::Migration
  def change
    rename_table :search_urls, :saved_search_queries
  end
end
