class CreateEvidenceItems < ActiveRecord::Migration
  def change
    create_table :evidence_items do |t|
      t.string :result
      t.string :benefit

      t.timestamps
    end
  end

  def up
    10.times do |i|
      EvidenceItem.create(name: "EvidenceItem ##{i}", description: "#{i} EvidenceItem.")
    end
  end

  def down
    EvidenceItem.delete_all
  end
end
