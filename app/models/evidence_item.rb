class EvidenceItem < ActiveRecord::Base
  attr_accessible :benefit, :result
  belongs_to :evidence_source

  searchable do
    text :benefit, :result
  end

end
