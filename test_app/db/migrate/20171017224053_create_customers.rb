class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.boolean :vip
      t.integer :days_to_pay

      t.timestamps
    end
  end
end
