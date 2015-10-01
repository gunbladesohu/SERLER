class SearchResult < ActiveRecord::Base
  attr_accessible :comment, :name
  has_and_belongs_to_many :evidence_items
end