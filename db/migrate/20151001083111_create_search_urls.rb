class CreateSearchUrls < ActiveRecord::Migration
  def change
    create_table :search_urls do |t|
      t.string :name
      t.text :comment
      t.string :address

      t.timestamps
    end
  end
end
