class AddColumnAutorToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :autor_id, :integer
  end
end
