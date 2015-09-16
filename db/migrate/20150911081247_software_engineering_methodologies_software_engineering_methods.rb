class SoftwareEngineeringMethodologiesSoftwareEngineeringMethods < ActiveRecord::Migration
  def change
    create_table :software_engineering_methodologies_software_engineering_methods, id: false do |t|
      t.belongs_to :software_engineering_method, index: true
      t.belongs_to :software_engineering_methodology, index: true
    end
  end
end
