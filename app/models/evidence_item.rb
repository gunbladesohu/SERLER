class EvidenceItem < AbstractUserCreatedModel
  attr_accessible :benefit, :result
  belongs_to :evidence_source
  has_and_belongs_to_many :software_engineering_methods
  has_and_belongs_to_many :software_engineering_methodologies
  has_and_belongs_to_many :saved_search_results
  
	RANSACKABLE_ATTRIBUTES = ["benefit","result"]

  def self.ransackable_attributes auth_object = nil
    (RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
