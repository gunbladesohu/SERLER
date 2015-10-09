class ChangeColumnSearchParamsOfSavedSearchQueryToText < ActiveRecord::Migration
  def change
    change_column :saved_search_queries, :search_params, :text
  end
end
