class AddColumnAddressToSportsEquiments < ActiveRecord::Migration[6.1]
  def change
    add_column :sports_equipments, :address, :string
  end
end
