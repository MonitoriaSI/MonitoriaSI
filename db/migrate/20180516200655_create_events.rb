class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :team, foreign_key: true
      t.date :inicio
      t.date :fim
      t.string :local

      t.timestamps
    end
  end
end
