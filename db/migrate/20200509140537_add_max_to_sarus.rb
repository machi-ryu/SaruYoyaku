class AddMaxToSarus < ActiveRecord::Migration[5.2]
  def change
    add_column :sarus, :max, :integer
  end
end
