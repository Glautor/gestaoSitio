class CreateCashierFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :cashier_follows do |t|
      t.references :cashier, foreign_key: true
      t.float :total

      t.timestamps
    end
  end
end
