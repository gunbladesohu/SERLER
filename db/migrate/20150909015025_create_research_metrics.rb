class CreateResearchMetrics < ActiveRecord::Migration
  def change
    create_table :research_metrics do |t|
      t.string :description
      t.belongs_to :evidence_source, index: true

      t.timestamps
    end
  end
end
