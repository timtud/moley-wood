class ChangeScheduleToDate < ActiveRecord::Migration[5.0]
  def change
  	remove_column :projects, :schedule
  	add_column :projects, :schedule, :date

  	Project.update_all(schedule: Date.today)
  end
end
