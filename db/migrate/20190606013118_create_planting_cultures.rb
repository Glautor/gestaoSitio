class CreatePlantingCultures < ActiveRecord::Migration[5.1]
  def change
    create_table :planting_cultures do |t|
      t.string :name
      t.string :tempo_estimado

      t.timestamps
    end
  end
end
