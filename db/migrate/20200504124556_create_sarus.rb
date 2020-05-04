class CreateSarus < ActiveRecord::Migration[5.2]
  def change
    create_table :sarus do |t|
      t.string :title
      t.integer :place_id
      t.datetime :stime
      t.datetime :etime
      t.string :menu
      t.string :momo
      t.integer :level

      t.timestamps
    end
  end
end
