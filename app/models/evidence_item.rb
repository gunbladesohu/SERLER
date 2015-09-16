class EvidenceItem < AbstractUserCreatedModel
  attr_accessible :benefit, :result
  belongs_to :evidence_source
  has_and_belongs_to_many :software_engineering_methods
  has_and_belongs_to_many :software_engineering_methodologies

  searchable do
    text :benefit, :result
  end

end
