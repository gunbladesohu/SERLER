class CreateSoftwareEngineeringMethods < ActiveRecord::Migration
  def change
    create_table :software_engineering_methods do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
