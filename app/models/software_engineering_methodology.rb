class SoftwareEngineeringMethodology < ActiveRecord::Base
  attr_accessible :description, :name
  has_and_belongs_to_many :software_engineering_methods
  has_and_belongs_to_many :evidence_items

  NON_RANSACKABLE_ATTRIBUTES = ['id']
  def self.ransackable_attributes auth_object = nil
    (column_names - NON_RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
