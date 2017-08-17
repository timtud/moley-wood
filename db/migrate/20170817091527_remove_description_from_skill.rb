class RemoveDescriptionFromSkill < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :description, :text
  end
end
