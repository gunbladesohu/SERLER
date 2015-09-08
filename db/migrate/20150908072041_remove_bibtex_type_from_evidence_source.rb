class RemoveBibtexTypeFromEvidenceSource < ActiveRecord::Migration
  def up
    remove_column :evidence_sources, :bibtex_type
  end

  def down
    add_column :evidence_sources, :bibtex_type, :string
  end
end
