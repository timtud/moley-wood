class ChangeStatusToString < ActiveRecord::Migration[5.0]
  def change
    remove_column :responses, :status, :boolean
    add_column :responses, :status, :string
  end
end
