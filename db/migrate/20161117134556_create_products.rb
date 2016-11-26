class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2, default: 0.0
      t.string :description
      t.string :image
      t.references :categories, index: true

      t.timestamps null: false
    end
  end
end
