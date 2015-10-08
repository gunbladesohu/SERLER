class BibtexTag < AbstractUserCreatedModel
  # naming according to http://www.bibtex.org/Format/
  attr_accessible :content, :name
  # :name might be checked according to
  #   https://en.wikipedia.org/wiki/BibTeX#Field_types
  belongs_to :evidence_source

  NON_RANSACKABLE_ATTRIBUTES = ['id']
  def self.ransackable_attributes auth_object = nil
    (column_names - NON_RANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end
