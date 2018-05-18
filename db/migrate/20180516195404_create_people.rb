class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :matricula
      t.string :telefone
      t.string :perfil

      t.timestamps
    end
  end
end
