class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :location
      t.text :contact
      t.integer :rank
      t.integer :reputation
      t.integer :checking
      t.text :introduction
      t.text :cooperation

      t.timestamps null: false
    end
  end
end
