class CreateLunarcrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :lunarcrafts do |t|

      t.timestamps
    end
  end
end
