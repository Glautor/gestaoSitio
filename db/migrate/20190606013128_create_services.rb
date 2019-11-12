class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.date :date
      t.references :worker, foreign_key: true
      t.string :hora_inicial
      t.string :hora_final
      t.float :custo_do_servico
      t.references :service_order, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
