class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.float :salario
      t.integer :horas_por_dia
      t.string :titulo_do_trabalho

      t.timestamps
    end
  end
end
