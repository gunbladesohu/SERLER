class SavedSearchQuery < ActiveRecord::Base
  attr_accessible :search_params, :comment, :name
  validates :name, presence: true
  validates :name, uniqueness: true
end
