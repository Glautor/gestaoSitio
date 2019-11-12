class CreateCashiers < ActiveRecord::Migration[5.1]
  def change
    create_table :cashiers do |t|
      t.date :data_do_movimento
      t.float :lancamento
      t.string :conta_contabil
      t.string :numero_do_documento
      t.string :tipo_do_documento
      t.string :descricao
      t.float :total

      t.timestamps
    end
  end
end
