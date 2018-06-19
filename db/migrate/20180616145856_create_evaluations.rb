class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.integer :nota
      t.string :comentario
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
