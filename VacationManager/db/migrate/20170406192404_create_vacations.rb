class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.belongs_to :worker, index: true
      t.string :worker_email
      t.date :start_date
      t.date :end_date
      t.string :status
      t.references :users
      t.string :current_user
      t.timestamps
    end
  end
end
