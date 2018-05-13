class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :descricao
      t.string :codigo
      t.string :sigla
      t.integer :cargaHoraria
      t.integer :periodo

      t.timestamps
    end
  end
end
