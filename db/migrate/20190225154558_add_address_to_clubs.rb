class AddAddressToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :address, :string
  end
end
