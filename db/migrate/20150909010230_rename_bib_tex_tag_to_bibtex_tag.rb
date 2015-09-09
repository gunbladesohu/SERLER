class RenameBibTexTagToBibtexTag < ActiveRecord::Migration
  def change
    rename_table :bib_tex_tags, :bibtex_tags
  end
end
