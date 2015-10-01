class RenameEvidenceItemsSearchResultsToEvidenceItemsSavedSearchResults < ActiveRecord::Migration
  def change
    rename_table :evidence_items_search_results, :evidence_items_saved_search_results
    rename_column :evidence_items_saved_search_results, :search_result_id, :saved_search_result_id
  end
end
