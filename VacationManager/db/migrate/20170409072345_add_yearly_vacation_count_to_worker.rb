class AddYearlyVacationCountToWorker < ActiveRecord::Migration[5.0]
  def change
    add_column :workers, :yearly_vacation_count, :integer
  end
end
