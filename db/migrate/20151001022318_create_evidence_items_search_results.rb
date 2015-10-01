class CreateEvidenceItemsSearchResults < ActiveRecord::Migration
  def change
    create_table :evidence_items_search_results, id: false do |t|
      t.belongs_to :evidence_item, index: true
      t.belongs_to :search_result, index: true
    end
  end
end
