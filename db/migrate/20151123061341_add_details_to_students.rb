class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :interestedfield, :string
    add_column :students, :history, :string
    add_column :students, :achievement, :string
    add_column :students, :hope, :string
  end
end
