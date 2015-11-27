class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.text :content
      t.text :requirements
      t.integer :demands
      t.text :contact
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
