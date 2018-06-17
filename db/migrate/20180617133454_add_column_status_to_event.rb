class AddColumnStatusToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :status, :boolean, :default => false
  end
end
