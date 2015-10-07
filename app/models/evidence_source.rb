class EvidenceSource < AbstractUserCreatedModel
  attr_accessible :research_level, :research_question
  has_many :evidence_items
  belongs_to :bibtex_type
  has_many :bibtex_tags, dependent: :destroy
  has_many :research_metrics, dependent: :destroy
  has_and_belongs_to_many :research_methods
  has_and_belongs_to_many :participant_types
	
	RANSACKABLE_ATTRIBUTES = ["research_level","research_question"]

  def self.ransackable_attributes auth_object = nil
    (RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
