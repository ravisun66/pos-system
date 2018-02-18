class CreateBillItems < ActiveRecord::Migration[5.1]
  def change
    create_table :bill_items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :amount
      t.belongs_to :bill, foreign_key: true

      t.timestamps
    end
  end
end
