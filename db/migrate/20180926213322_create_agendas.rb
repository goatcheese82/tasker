class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.date :date
      t.time :time
      t.string :presiding
      t.string :conducting

      t.timestamps
    end
  end
end
