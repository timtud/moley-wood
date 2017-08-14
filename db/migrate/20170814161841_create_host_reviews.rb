class CreateHostReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :host_reviews do |t|
      t.references :project, foreign_key: true
      t.references :job, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
