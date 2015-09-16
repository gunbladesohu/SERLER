class SoftwareEngineeringMethod < ActiveRecord::Base
  attr_accessible :description, :name
  has_and_belongs_to_many :software_engineering_methodologies
  has_and_belongs_to_many :evidence_items
end
