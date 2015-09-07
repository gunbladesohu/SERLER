class CreateBibTexTags < ActiveRecord::Migration
  def change
    create_table :bib_tex_tags do |t|
      t.string :name
      t.string :content
      t.belongs_to :evidence_source, index: true

      t.timestamps
    end
  end
end
