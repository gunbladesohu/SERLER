class EvidenceItem < ActiveRecord::Base
  attr_accessible :benefit, :result

  searchable do
    text :benefit, :result
  end

end
