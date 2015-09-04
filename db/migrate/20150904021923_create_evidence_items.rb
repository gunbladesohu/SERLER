class CreateEvidenceItems < ActiveRecord::Migration
  def change
    create_table :evidence_items do |t|
      t.string :result
      t.string :benefit

      t.timestamps
    end
  end
end
