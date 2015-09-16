class EvidenceSourcesParticipantTypes < ActiveRecord::Migration
  def change
    create_table :evidence_sources_participant_types, id: false do |t|
      t.belongs_to :evidence_source, index: true
      t.belongs_to :participant_type, index: true
    end
  end
end
