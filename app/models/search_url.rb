class SearchUrl < ActiveRecord::Base
  attr_accessible :address, :comment, :name
  validates :name, presence: true
end
