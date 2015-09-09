class EvidenceSourcesResearchMethods < ActiveRecord::Migration
  def change
    create_table :evidence_sources_research_methods, id: false do |t|
      t.belongs_to :evidence_source, index: true
      t.belongs_to :research_method, index: true
    end
  end
end
