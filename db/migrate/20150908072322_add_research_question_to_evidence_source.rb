class AddResearchQuestionToEvidenceSource < ActiveRecord::Migration
  def change
    add_column :evidence_sources, :research_question, :string
  end
end
