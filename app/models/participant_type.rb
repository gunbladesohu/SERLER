class ParticipantType < AbstractFixedListItem
  has_and_belongs_to_many :evidence_sources

  NON_RANSACKABLE_ATTRIBUTES = ['id', 'created_at', 'updated_at']
  def self.ransackable_attributes auth_object = nil
    (column_names - NON_RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
