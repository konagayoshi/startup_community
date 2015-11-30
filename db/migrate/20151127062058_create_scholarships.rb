class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :title
      t.string :sponsor
      t.integer :award
      t.text :requirements
      t.datetime :start_time
      t.datetime :end_time
      t.text :content
      t.text :contact
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
