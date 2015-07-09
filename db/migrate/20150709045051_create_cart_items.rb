class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :cart_id, index: true
      t.integer :product, index: true
      t.integer :quantity
      t.decimal :price
      t.belongs_to :product
      t.belongs_to :cart

      t.timestamps null: false
    end
  end
end
