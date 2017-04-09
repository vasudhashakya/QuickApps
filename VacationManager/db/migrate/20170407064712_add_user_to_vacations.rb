class AddUserToVacations < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :user_email, :string, references: :users
  end
end
