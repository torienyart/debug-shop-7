class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :image
      t.boolean :active_inactive, default: true
      t.integer :inventory
      t.references :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
