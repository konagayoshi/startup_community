class CreateJobdemands < ActiveRecord::Migration
  def change
    create_table :jobdemands do |t|
      t.text :title
      t.text :overview
      t.text :reponsibility
      t.text :competency
      t.text :education
      t.text :workexperience
      t.text :lauguage
      t.text :other

      t.timestamps null: false
    end
  end
end
