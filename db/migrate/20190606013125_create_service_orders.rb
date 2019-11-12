class CreateServiceOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :service_orders do |t|
      t.string :name
      t.string :requisitor
      t.date :data_prevista_de_abertura
      t.date :data_prevista_de_finalizacao
      t.references :area, foreign_key: true
      t.references :planting_culture, foreign_key: true

      t.timestamps
    end
  end
end
