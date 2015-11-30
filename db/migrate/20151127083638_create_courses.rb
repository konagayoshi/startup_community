class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor
      t.string :content
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
