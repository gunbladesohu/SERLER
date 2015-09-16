class AbstractFixedListItem < AbstractUserCreatedModel
  self.abstract_class = true
  attr_accessible :name
end
