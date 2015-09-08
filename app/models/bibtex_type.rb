class BibtexType < ActiveRecord::Base
  attr_accessible :name
  has_many :evidence_sources
end
