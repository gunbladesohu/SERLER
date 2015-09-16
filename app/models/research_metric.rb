class ResearchMetric < AbstractUserCreatedModel
  attr_accessible :description
  belongs_to :evidence_source
end
