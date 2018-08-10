class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.string :summary
      t.integer :owner_id

      t.timestamps
    end
  end
end
