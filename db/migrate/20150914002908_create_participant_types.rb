class CreateParticipantTypes < ActiveRecord::Migration
  def change
    create_table :participant_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
