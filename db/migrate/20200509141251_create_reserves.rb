class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.integer :user_id
      t.integer :saru_id

      t.timestamps
    end
  end
end
