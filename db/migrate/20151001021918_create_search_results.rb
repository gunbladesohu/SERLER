class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
