class SoftwareEngineeringMethodology < ActiveRecord::Base
  attr_accessible :description, :name
  has_and_belongs_to_many :software_engineering_methods
  has_and_belongs_to_many :evidence_items
end
