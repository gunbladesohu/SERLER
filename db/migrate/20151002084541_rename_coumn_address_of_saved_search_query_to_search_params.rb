class RenameCoumnAddressOfSavedSearchQueryToSearchParams < ActiveRecord::Migration
  def change
    rename_column :saved_search_queries, :address, :search_params
  end
end
