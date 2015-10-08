class EvidenceItem < AbstractUserCreatedModel
  attr_accessible :benefit, :result
  belongs_to :evidence_source
  has_and_belongs_to_many :software_engineering_methods
  has_and_belongs_to_many :software_engineering_methodologies
  has_and_belongs_to_many :saved_search_results

  RANSACKABLE_ATTRIBUTES = ["benefit", "result", "id"]

  # TODO/hack:
  # we must allow the id field to be searchable/ransackable in order
  #   to search for it in URLs (e.g. to re-call a saved search result)
  # BUT we cannot tell the form helper to not display this field,
  #   so we hide it after displaying it…
  # see also search.js.coffee
  def self.ransackable_attributes auth_object = nil
    (RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end

end
