class CreateSoftwareEngineeringMethodologies < ActiveRecord::Migration
  def change
    create_table :software_engineering_methodologies do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
