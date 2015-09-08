class CreateBibtexTypes < ActiveRecord::Migration
  def change
    create_table :bibtex_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
