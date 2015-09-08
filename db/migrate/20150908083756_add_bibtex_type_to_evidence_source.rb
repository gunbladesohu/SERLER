class AddBibtexTypeToEvidenceSource < ActiveRecord::Migration
  def change
    add_column :evidence_sources, :bibtex_type_id, :integer
  end
end
