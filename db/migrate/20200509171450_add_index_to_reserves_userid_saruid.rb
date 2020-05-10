class AddIndexToReservesUseridSaruid < ActiveRecord::Migration[5.2]
  def change
    add_index :reserves, [:user_id, :saru_id], unique: true
  end
end
