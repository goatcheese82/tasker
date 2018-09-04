class CreateCallings < ActiveRecord::Migration[5.2]
  def change
    create_table :callings do |t|

      t.timestamps
    end
  end
end
