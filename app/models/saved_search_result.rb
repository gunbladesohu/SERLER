class SavedSearchResult < AbstractUserCreatedModel
  attr_accessible :comment, :name, :evidence_items, :evidence_item_ids
  has_and_belongs_to_many :evidence_items
  validates :name, :evidence_items, presence: true
  validates :name, uniqueness: true
end
