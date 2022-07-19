class CreateSportsEquipments < ActiveRecord::Migration[6.1]
  def change
    has_many :users
    create_table :sports_equipments do |t|
      t.string :category
      t.string :size
      t.float :price
      t.boolean :availability
      t.float :condition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
