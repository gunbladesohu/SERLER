class EvidenceItemsSoftwareEngineeringMethodologies < ActiveRecord::Migration
  def change
    create_table :evidence_items_software_engineering_methods, id: false do |t|
      t.belongs_to :evidence_item, index: true
      t.belongs_to :software_engineering_method, index: true
    end
  end
end
