class BibtexTag < AbstractUserCreatedModel
  # naming according to http://www.bibtex.org/Format/
  attr_accessible :content, :name, :evidence_source
  # :name might be checked according to
  #   https://en.wikipedia.org/wiki/BibTeX#Field_types
  belongs_to :evidence_source
end
