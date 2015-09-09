class EvidenceSource < AbstractUserCreatedModel
  attr_accessible :research_level, :research_question
  # TODO: belongs_to :evidence_items
  belongs_to :bibtex_type
  has_many :bibtex_tags, dependent: :destroy
  # TODO: has_many :research_metrics, dependent: :destroy
  # TODO: has_many :research_methods
  # TODO: has_many :research_participants
end
