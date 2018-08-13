class CreateGroupAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :group_assignments do |t|
      t.integer :user_id
      t.integer :group_id
      t.boolean :group_admin

      t.timestamps
    end
  end
end
