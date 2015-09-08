class EvidenceSource < AbstractUserCreatedModel
  attr_accessible :bibtex_type, :research_level
  validates_inclusion_of :bibtex_type, :in => %w( article book booklet
    conference inbook incollection inproceedings manual mastersthesis
    misc phdthesis proceedings techreport unpublished )
  has_many :bib_tex_tags, dependent: :destroy
  # TODO: has_one :evidence_item
  # TODO: has_many :research_designs
end
