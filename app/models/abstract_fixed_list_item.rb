class AbstractFixedListItem < ActiveRecord::Base
  self.abstract_class = true
  attr_accessible :name
end
