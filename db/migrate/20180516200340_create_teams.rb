class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :discipline, foreign_key: true
      t.references :semester, foreign_key: true
      t.binary :editalAnexo

      t.timestamps
    end
  end
end
