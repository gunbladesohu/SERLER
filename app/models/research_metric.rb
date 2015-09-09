class ResearchMetric < ActiveRecord::Base
  attr_accessible :description
  belongs_to :evidence_source
end
