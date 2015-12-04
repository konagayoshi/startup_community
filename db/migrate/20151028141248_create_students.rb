class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
		t.string :name
		t.string :date_of_birth
		t.string :country
		t.string :university
		t.string :major
		t.text :quote
		t.string :phone
		t.text :history
		t.text :achievement
		t.text :knowledge
		t.text :about
		t.timestamps null: false
    end
  end
end
