class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
		t.string :name
		t.string :university
		t.string :major
		t.string :interestedfield
		t.string :history
		t.string :achievement
		t.string :hope
		t.timestamps null: false
    end
  end
end
