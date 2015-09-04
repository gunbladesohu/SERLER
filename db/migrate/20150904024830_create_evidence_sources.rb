class CreateEvidenceSources < ActiveRecord::Migration
  def change
    create_table :evidence_sources do |t|
      t.string :bibtex_type
      t.string :research_level

      t.timestamps
    end
  end
end
