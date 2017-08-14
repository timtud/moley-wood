class CreateJobReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :job_reviews do |t|
      t.references :job, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
