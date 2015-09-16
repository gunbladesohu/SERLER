class AddEvidenceSourceToEvidenceItem < ActiveRecord::Migration
  def change
    add_column :evidence_items, :evidence_source_id, :integer
  end
end
