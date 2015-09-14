class ParticipantType < AbstractFixedListItem
    has_and_belongs_to_many :evidence_sources
end
