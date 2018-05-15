class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.integer :ano
      t.integer :periodo
      t.date :dataInicio
      t.date :dataFim

      t.timestamps
    end
  end
end
