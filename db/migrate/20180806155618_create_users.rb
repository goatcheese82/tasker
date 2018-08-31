class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.string :uid
      t.string :address
      t.string :phone_number
      t.string :password_digest
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
