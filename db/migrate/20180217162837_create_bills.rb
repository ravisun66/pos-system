class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.decimal :total_amount

      t.timestamps
    end
  end
end
