class AddColumnDescricaoToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :descricao, :string
  end
end
