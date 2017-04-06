class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.string :worker_email
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end
