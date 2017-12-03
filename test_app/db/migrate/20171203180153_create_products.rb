class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :description
      t.decimal :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
