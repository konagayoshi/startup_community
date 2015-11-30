class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :location
      t.text :introduction
      t.text :contact
      t.text :cooperation
      t.integer :rank
      t.integer :reputation
      t.integer :checked

      t.timestamps null: false
    end
  end
end
