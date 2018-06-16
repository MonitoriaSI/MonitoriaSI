class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :people, :events do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end

