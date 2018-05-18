class RemovePerfilFromPerson < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :perfil, :string
  end
end
