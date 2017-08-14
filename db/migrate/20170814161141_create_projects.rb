class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :schedule
      t.string :location

      t.timestamps
    end
  end
end
