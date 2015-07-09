class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :short_description
      t.text :detailed_description
      t.string :image
      t.boolean :currently_stocked
      t.boolean :currently_selling

      t.timestamps null: false
    end
  end
end
