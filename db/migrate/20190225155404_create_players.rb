class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :value_per_match
      t.string :nationality
      t.string :social_url
      t.integer :age
      t.boolean :availability
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
