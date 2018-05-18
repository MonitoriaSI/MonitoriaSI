class AddPerfilToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :perfil, :integer
  end
end
