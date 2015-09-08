class EvidenceSource < AbstractUserCreatedModel
  attr_accessible :research_level, :research_question
  # TODO: belongs_to :evidence_items
  # TODO: has_one :bibtex_type
  has_many :bib_tex_tags, dependent: :destroy
  # TODO: has_many :research_metrics, dependent: :destroy
  # TODO: has_many :research_methods
  # TODO: has_many :research_participants
end
