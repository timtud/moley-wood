class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :project, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
