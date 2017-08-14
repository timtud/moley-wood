class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
