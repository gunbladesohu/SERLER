class EvidenceSource < AbstractUserCreatedModel
  attr_accessible :research_level, :research_question
  has_many :evidence_items
  belongs_to :bibtex_type
  has_many :bibtex_tags, dependent: :destroy
  has_many :research_metrics, dependent: :destroy
  has_and_belongs_to_many :research_methods
  has_and_belongs_to_many :participant_types

  NON_RANSACKABLE_ATTRIBUTES = ['id', 'created_at', 'updated_at']
  def self.ransackable_attributes auth_object = nil
    (column_names - NON_RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
