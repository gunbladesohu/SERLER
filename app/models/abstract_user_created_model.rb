class AbstractUserCreatedModel < ActiveRecord::Base
  self.abstract_class = true

  # This is a placeholder for the moment.
  #
  # Once we have users, this model should be related with exactly one
  # user. E.g.:
  # belongs_to :created_by, :class_name => "User"
  # belongs_to :updated_by, :class_name => "User"
  # with the appropriate implementation (probably using before_create
  # and before_update).
  #
  # Models where objects are created by users should inherit from this
  # abstract base class.

end
