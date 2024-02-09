class AddFieldsToLunarcraft < ActiveRecord::Migration[7.0]
  def change
    add_column :lunarcrafts, :x, :integer
    add_column :lunarcrafts, :y, :integer
    add_column :lunarcrafts, :z, :integer
    add_column :lunarcrafts, :direction, :string
  end
end
