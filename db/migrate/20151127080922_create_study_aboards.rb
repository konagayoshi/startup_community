class CreateStudyAboards < ActiveRecord::Migration
  def change
    create_table :study_aboards do |t|
      t.string :title
      t.string :destination
      t.datetime :start_time
      t.integer :duration
      t.string :sponsor
      t.text :requirements
      t.text :content
      t.text :contact
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
