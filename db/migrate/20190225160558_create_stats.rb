class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :goals
      t.integer :assists
      t.references :player, foreign_key: true
      t.integer :games_played
      t.string :form

      t.timestamps
    end
  end
end
